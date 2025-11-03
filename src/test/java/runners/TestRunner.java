package runners;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate runAllTests() {
        return Karate.run("classpath:features")
                     // .tags("~@ignore")
                      .tags("~@create")
                     .relativeTo(getClass());
    }
}
