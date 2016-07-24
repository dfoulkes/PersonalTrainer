

function arraysForGraph(){
    var list = listOfAllHeights();
    var minList = new Array();
    var avgList = new Array();
    var overList = new Array();

    for (var i = 0; i < list.length; i++) {
        minList.push(list[i].b);
        avgList.push(list[i].a);
        overList.push(list[i].o);
    }

    return {
        b:  minList,
        a : avgList,
        o : overList,
    }

}


function listOfAllHeights(){
    var heights = new Array();
    var currentHeight = nextHeight(4,12);
    var maxCycle = 1000;
    var currentCycle = 0;

    while(currentHeight.f < 6 || currentHeight.f == 6 && currentHeight.i < 5){
        heights.push(maxObject(currentHeight.f, currentHeight.i))
        currentHeight = nextHeight(currentHeight.f,currentHeight.i);
        currentCycle++;
        if (currentCycle == maxCycle) {
            console.log("I messed up, there's no way this should of lasted this long. ");
            break;
        }
    }
    return heights;
}

function nextHeight(feet, inches){
    var height =  function () {
        var feetV=0;
        var inchesV= 0;
        return {
            f: feetV,
            i : inchesV
        }
    }

    if (inches == 12) {
        height.f = feet + 1;
        height.i = 0;
    }
    else {
        height.f = feet;
        height.i = inches+1;
    }
    return height;
}

function maxObject(feet, inches){
    var feetV;
    var inchesV;
    var below;
    var average;
    var overWeight;

    below = generateData(feet, inches, 18.5);
    average = generateData(feet, inches, 24.9);
    overWeight = generateData(feet, inches, 30);
    feetV = feet;
    inchesV = inches;

    return {
        b: below,
        a : average,
        o : overWeight,
        f : feetV,
        i : inchesV
    }

}




function generateData(feet, inches, thresholdMax) {
    var found = false;
    var maxCycle = 1000;
    var currentCycle = 0;
    var currentWeight = getNext(6, 13);
    while (!found) {
        var currentValue = calculateMath(currentWeight.s, currentWeight.p, feet, inches);
        currentCycle++;
        if (currentValue >= thresholdMax) {
            found = true;
            var weightInPounds = (currentWeight.s * 14) + currentWeight.p;
            return weightInPounds;
        }

        if (currentCycle == maxCycle) {
            console.log("I messed up, I was not able to find the threshold for " + thresholdMax + " Ft:" + feet + " Inches:" + inches);
            break;
        }
        currentWeight = getNext(currentWeight.s, currentWeight.p);
    }
}

function getNext(stone, pounds) {

    var data =  function () {
        var poundsV=0;
        var stoneV= 0;
        return {
            p: poundsV,
            s : stoneV
        }
    }

    if (pounds == 14) {
        data.s = stone + 1;
        data.p = 0;
    }
    else {
        data.s = stone;
        data.p = pounds+1;
    }
    return data;
}

function calculateMath(stones, pounds, feet, inches) {
    var weight = (stones * 14) + pounds;
    var height = (feet * 12) + inches;
    return Math.round((weight * 703) / Math.pow(height, 2) * 10) / 10;
}
