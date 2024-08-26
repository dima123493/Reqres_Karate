package tests;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.BeforeAll;

public class ReqresTest {
    @BeforeAll
    public static void configuration() {
        System.setProperty("karate.env", "default");
    }

    @Karate.Test
    Karate testGet() {
        return Karate.run("classpath:feature/testGet.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGet1() {
        return Karate.run("classpath:feature/get.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPost() {
        return Karate.run("classpath:feature/post.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPut() {
        return Karate.run("classpath:feature/put.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testDelete() {
        return Karate.run("classpath:feature/delete.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testCofiguration() {
        return Karate.run("classpath:feature/configuration.feature").relativeTo(getClass());
    }

}