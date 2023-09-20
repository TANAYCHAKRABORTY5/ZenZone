const xArray = ["High level ADHD","Mood disorder ","Mid level depression","Low level anxiety"];
const yArray = [55, 49, 44, 24, 15];

const width = window.screen.width;
console.log(width);

var layout = {
  autosize: true,
  width: 300,
  height: 300,
  margin: {
    l: 10,
    r: 10,
    b: 10,
    t: 10,
    pad: 0,
  },
};

const data = [{ labels: xArray, values: yArray, hole: 0.4, type: "pie" }];
const data2 = [{ labels: xArray, values: yArray, type: "pie" }];

Plotly.newPlot("myPlot", data, layout);
Plotly.newPlot("myPlot2", data2, layout);

// line graph
const xArray2 = [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150];
const yArray2 = [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15];

// Define Data
const data3 = [
  {
    x: xArray2,
    y: yArray2,
    mode: "lines",
    type: "scatter",
  },
];

// Define Layout
const layout3 = {
  xaxis: { range: [40, 160], title: "Square Meters" },
  yaxis: { range: [5, 16], title: "Range" },
  title: "Progress",
  autosize: true,
  width: 420,
  height: 300,
  margin: {
    l: 50,
    r: 50,
    b: 50,
    t: 50,
    pad: 10,
  },
};

// Display using Plotly
Plotly.newPlot("myPlot3", data3, layout3);

// bar graph
const xArray4 = [55, 49, 44, 24, 15];
const yArray4 = ["High level ADHD","Mood disorder ","Mid level depression","Low level anxiety"];

const data4 = [
  {
    x: xArray4,
    y: yArray4,
    type: "bar",
    orientation: "h",
    marker: { color: "rgba(255,0,0,0.6)" },
  },
];

const layout4 = {
  title: "Your Data",
  autosize: true,
  width: 650,
  height: 300,
  margin: {
    l: 50,
    r: 50,
    b: 50,
    t: 50,
    pad: 10,
  },
};

Plotly.newPlot("myPlot4", data4, layout4);

// sraight bar graph
const xArray6 = ["Italy", "France", "Spain", "USA", "Argentina"];
const yArray6 = [55, 49, 44, 24, 15];

const data6 = [
  {
    x: xArray6,
    y: yArray6,
    type: "bar",
    orientation: "v",
    marker: { color: "rgba(0,0,255)" },
  },
];

const layout6 = {
  title: "World Health Range",
  autosize: true,
  width: 380,
  height: 300,
  margin: {
    l: 50,
    r: 50,
    b: 50,
    t: 50,
    pad: 10,
  },
};

Plotly.newPlot("myPlot6", data6, layout6);
