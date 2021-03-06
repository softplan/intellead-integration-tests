/*
 *
 * Copyright 2017 Softplan
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/
package intellead;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import cucumber.annotation.Before;
import cucumber.annotation.en.Then;
import cucumber.annotation.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.bson.Document;
import org.json.JSONObject;

import static java.lang.Thread.sleep;
import static org.bson.Document.parse;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class MainSteps extends Steps {

    private int statusCode;

    @Before
    public void setUp() throws ClassNotFoundException {
        superSetUp();
    }

    @When("^I send an empty body to ([\\w-]+)(/[\\w-]+)$")
    public void I_send_an_empty_body_to_service_api(String serviceName, String api) {
        RequestSpecification request = request(serviceName);
        request.header("Content-Type", "application/json");
        request.header("token", "ZVtrRXcpTnYWpsjnIpS3olQFGek84E5Z");
        request.body(new byte[0]);
        Response response = request.post(api);
        statusCode = response.getStatusCode();
    }

    @Then("^I should receive a status code of (\\d+)$")
    public void I_should_receive_a_status_code_of(int statusCode) {
        assertEquals(statusCode, this.statusCode);
    }

    @When("^I send a body with no leads to ([\\w-]+)(/[\\w-]+)$")
    public void I_send_a_body_with_no_leads_to_service_api(String serviceName, String api) {
        RequestSpecification request = request(serviceName);
        request.header("Content-Type", "application/json");
        request.header("token", "ZVtrRXcpTnYWpsjnIpS3olQFGek84E5Z");
        JSONObject json = new JSONObject();
        json.put("leads", "");
        request.body(json.toString());
        Response response = request.post(api);
        statusCode = response.getStatusCode();
    }

    @When("^I send lead with id (\\d+) to ([\\w-]+)(/[\\w-/]+) with token ([\\w-]+)$")
    public void I_send_lead_with_id_to_service_api(int leadId, String serviceName, String api, String token) {
        RequestSpecification request = request(serviceName);
        request.header("Content-Type", "application/json");
        request.header("token", token);
        request.body(Leads.getLead(leadId).toString());
        Response response = request.post(api);
        statusCode = response.getStatusCode();
    }

    @When("^I send lead with id (\\d+) to ([\\w-]+)(/[\\w-/]+)$")
    public void I_send_lead_with_id_to_service_api(int leadId, String serviceName, String api) {
        RequestSpecification request = request(serviceName);
        request.header("Content-Type", "application/json");
        request.header("token", "ZVtrRXcpTnYWpsjnIpS3olQFGek84E5Z");
        request.body(Leads.getLead(leadId).toString());
        Response response = request.post(api);
        statusCode = response.getStatusCode();
    }

    @When("^I send new dataset structure lead with id (\\d+) and age (\\d+) to ([\\w-]+)(/[\\w-/]+) with token ([\\w-]+)$")
    public void I_send_new_dataset_structure_lead_with_id_and_age_to_intellead_connector_rd_webhook_with_token_NKNYi_qETGmzDzOfY_hmrhvxEJ_vSBz(int id, int age, String serviceName, String api, String token) {
        RequestSpecification request = request(serviceName);
        request.header("Content-Type", "application/json");
        request.header("token", token);
        request.body(Leads.getNewDatasetStructureLead(id, age).toString());
        Response response = request.post(api);
        statusCode = response.getStatusCode();
    }

    @Then("^I should wait for (\\d+) ms$")
    public void I_should_wait_for_ms(int milliseconds) throws InterruptedException {
        sleep(milliseconds);
    }

    @Then("^Lead with id (\\d+) should be in the database")
    public void Lead_with_id_should_be_in_intellead_data_mongodb_database(int leadId) {
        MongoDatabase database = mongoClientData.getDatabase("local");
        MongoCollection<Document> collection = database.getCollection("leads");
        long count = collection.count(parse("{_id: {$eq: \"" + leadId + "\"}}"));
        assertEquals(1, count);
    }

    @Then("^Lead with ([\\w_\\.]+) equals to ([\\w ]+) should be in the database")
    public void Lead_with_field_should_be_in_intellead_data_mongodb_database(String fieldName, String fieldValue) {
        MongoDatabase database = mongoClientData.getDatabase("local");
        MongoCollection<Document> collection = database.getCollection("leads");
        long count = collection.count(parse("{\"" + fieldName + "\": {$eq: \"" + fieldValue + "\"}}"));
        assertTrue(count >= 1);
    }

    @Then("^Lead with id (\\d+) has field ([\\w_\\.]+) in the database$")
    public void Lead_with_id_has_field_in_the_database(int leadId, String fieldName) {
        MongoDatabase database = mongoClientData.getDatabase("local");
        MongoCollection<Document> collection = database.getCollection("leads");
        long count = collection.count(parse("{$and: [{_id: {$eq: \"" + leadId + "\"}}, {\"" + fieldName + "\": {$exists: true}}]}"));
        assertEquals(1, count);
    }

    @Then("^Delete lead with id (\\d+) in the database")
    public void Delete_lead_with_id_in_intellead_data_mongodb_database(int leadId) {
        MongoDatabase database = mongoClientData.getDatabase("local");
        MongoCollection<Document> collection = database.getCollection("leads");
        collection.deleteOne(parse("{_id: {$eq: \"" + leadId + "\"}}"));
        long count = collection.count(parse("{_id: {$eq: \"" + leadId + "\"}}"));
        assertEquals(0, count);
    }

    @Then("^Customer (\\d+) must have (\\d+) leads? in the database$")
    public void Customer_must_have_lead_in_the_database(int customer, int leads) {
        MongoDatabase database = mongoClientData.getDatabase("local");
        MongoCollection<Document> collection = database.getCollection("leads");
        long count = collection.count(parse("{\"lead.customer\": {$eq: " + customer + "}}"));
        assertEquals(leads, count);
    }

}
