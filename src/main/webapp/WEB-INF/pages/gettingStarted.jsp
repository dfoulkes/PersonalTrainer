<div class="row-fluid">




    <row class="row-fluid">
        <div class="span4">
            <article class="articleBody">
                <h1 class="artcileHeader">Welcome to CG Fitness</h1>
                <p> Before your first 1:1 training session we will meet for a complimentary assessment.  In this assessment we can go through any fitness training you may have done before, any injuries you have that I need to be made aware of.</p>
                <p>During your assessment I will perform a short fitness test, go through your short term - long term fitness goals. I am here to tailor your plan to what you want to work on.  Working with me will give you the knowledge and ability to make longterm lifestyle changes.  Once we have gone through everything you want out of your training sessions we will do a small workout of your plan in the gym just to get you started. Once all this is done on your first personal training session you will get your very own tailored fitness plan and food plan to follow. After 6 weeks of training we will meet up again and review your exercises and meal plan.</p>
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
                <h1 class="artcileHeader">Preparation</h1>
                How to prep for your assessment:
                <ul>
                    <li>Wear appropriate gym clothes and trainers</li>
                    <li>Avoid heavy meals at least 2 hours before coming to the gym. However, I strongly advise eating something light prior to this</li>
                    <li>Bring along a food diary from the past week</li>
                    <li>Make sure CG fitness is aware of any illness or injury beforehand</li>
                </ul>
            </article>
        </div>
    </row>
</div>