<div class="row-fluid">




    <row class="row-fluid">
        <div class="span4">
            <article class="articleBody">
                <h1 class="artcileHeader">Welcome to CG Fitness</h1>
                <p>Before booking the first one to one training session, everybody is entitled to a free initial
                    assessment. This assessment will involve discussing any previous fitness training, any injuries,
                    fitness tests and measurements, and current fitness goals. This is important so that Callum can
                    tailor-make a client’s individual plan to suit their own needs. This plan will give each client the
                    knowledge to make positive long term lifestyle changes. Once the discussion is over, Callum will run
                    through a small workout in the gym almost like a taster session.</p>

                <div class="span2">

                </div>
            </article>
        </div>

        <div class="span4">
            <article class="articleBody">
                <h1 class="artcileHeader">What is Your BMI?</h1>
                <p>In your assessment I will also take your measurements, height and weight to work out your BMI:</p>

                <h3>Checkout your BMI</h3>
                <ul>
                    <form>
                        <fieldset class="form-group">
                            <label for="heightValueFeet">Height</label><input class="form-control" ng-change="change()" type="number" id="heightValueFeet" ng-model="feet" placeholder="Feet" /> <input class="form-control" ng-change="change()" type="number" ng-model="inches" id="heightValueInches" placeholder="Inches" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="weightValueStone">Weight</label><input type="number" class="form-control" ng-change="change()" ng-model="stones" id="weightValueStone" placeholder="Stone" /> <input type="number" class="form-control" ng-model="pounds" ng-change="change()" id="weightValuePounds" placeholder="Pounds" />
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="bmi">BMI</label><input class="form-control" ng-readonly="true" type="number" id="bmi" ng-model="bmi" placeholder="BMI"/>
                        </fieldset>
                    </form>
                </ul>

              <div class="bmiResult">

                    <div class="alert alert-warning text-center" id="underWeight">
                       Under Weight
                    </div>
                    <div id="healthyWeight" class="alert alert-success text-center">
                        Healthy Weight
                    </div>
                    <div class="alert alert-warning text-center" id="overWeight">
                        Over Weight
                    </div>
                    <div class="alert alert-danger text-center" id="obese">
                        Obese
                    </div>
                            <div class="panel panel-default">
                                <div class="panel-title">BMI Graph</div>
                                    <div class="panel-body">
                                        <canvas id="line" class="chart chart-line" chart-data="data"
                                                chart-labels="labels" chart-series="series" chart-options="options"
                                                chart-dataset-override="datasetOverride">
                                        </canvas>
                                    </div>
                                <div class="panel-footer caption"></div>
                            </div>
                  <div>
                      <small class="disclaimer">legal notice and disclaimer</small>
                      <small class="legalNotice">All information contained in and produced by the BMI calculator is provided for educational purposes only. This information should not be used for the diagnosis or treatment of any health problem or disease.</small>
                  </div>
              </div>
            </article>
        </div>

        <div class="span4">
            <article class="articleBody">
                <h1 class="artcileHeader">Advice for the initial assessment:</h1>
                <ul class="list-group">
                    <li class="list-group-item">Wear appropriate gym clothes and trainers</li>
                    <li class="list-group-item">Eat something light before attending but avoid heavy meals at least two
                        hours before coming to the gym.
                    </li>
                    <li class="list-group-item">Bring along a food diary from the past wee</li>
                    <li class="list-group-item">Make sure to inform Callum of any injuries/illnesses which may affect
                        training.
                    </li>
                </ul>
            </article>
        </div>
    </row>
</div>