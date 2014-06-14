/*
 *  Gaerlitai composition
 *     Copyright Jimmie Felidae 2014
 */

72.0 => float TEMPO;
Gain MASTER => NRev masterRev => dac;
masterRev => WvOut wav_out => blackhole;
me.dir() + "/out.wav" => wav_out.wavFilename;

0.01 => masterRev.mix;  // just little

Math.srandom(175);  // set seed // seems no use?

MidiOut midi_out;
//if (!midi_out.open(0)) me.exit();


/* MIDI Notes */
float midi[0];
0 => float transpose;
transpose + 12 @=> midi["C0"];
transpose + 13 @=> midi["C#0"];
transpose + 14 @=> midi["D0"];
transpose + 15 @=> midi["E-0"];
transpose + 16 @=> midi["E0"];
transpose + 17 @=> midi["F0"];
transpose + 18 @=> midi["F#0"];
transpose + 19 @=> midi["G0"];
transpose + 20 @=> midi["G#0"];
transpose + 21 @=> midi["A0"];
transpose + 22 @=> midi["B-0"];
transpose + 23 @=> midi["B0"];
transpose + 24 @=> midi["C1"];
transpose + 25 @=> midi["C#1"];
transpose + 26 @=> midi["D1"];
transpose + 27 @=> midi["E-1"];
transpose + 28 @=> midi["E1"];
transpose + 29 @=> midi["F1"];
transpose + 30 @=> midi["F#1"];
transpose + 31 @=> midi["G1"];
transpose + 32 @=> midi["G#1"];
transpose + 32 @=> midi["A-1"];
transpose + 33 @=> midi["A1"];
transpose + 34 @=> midi["B-1"];
transpose + 35 @=> midi["B1"];
transpose + 36 @=> midi["C2"];
transpose + 37 @=> midi["C#2"];
transpose + 38 @=> midi["D2"];
transpose + 39 @=> midi["E-2"];
transpose + 40 @=> midi["E2"];
transpose + 41 @=> midi["F2"];
transpose + 42 @=> midi["F#2"];
transpose + 43 @=> midi["G2"];
transpose + 44 @=> midi["G#2"];
transpose + 44 @=> midi["A-2"];
transpose + 45 @=> midi["A2"];
transpose + 46 @=> midi["B-2"];
transpose + 47 @=> midi["B2"];
transpose + 48 @=> midi["C3"];
transpose + 49 @=> midi["C#3"];
transpose + 50 @=> midi["D3"];
transpose + 51 @=> midi["E-3"];
transpose + 52 @=> midi["E3"];
transpose + 53 @=> midi["F3"];
transpose + 54 @=> midi["F#3"];
transpose + 55 @=> midi["G3"];
transpose + 56 @=> midi["G#3"];
transpose + 56 @=> midi["A-3"];
transpose + 57 @=> midi["A3"];
transpose + 58 @=> midi["A#3"];
transpose + 58 @=> midi["B-3"];
transpose + 59 @=> midi["B3"];
transpose + 60 @=> midi["C4"];
transpose + 61 @=> midi["C#4"];
transpose + 61 @=> midi["D-4"];
transpose + 62 @=> midi["D4"];
transpose + 63 @=> midi["D#4"];
transpose + 63 @=> midi["E-4"];
transpose + 64 @=> midi["E4"];
transpose + 65 @=> midi["F4"];
transpose + 66 @=> midi["F#4"];
transpose + 66 @=> midi["G-4"];
transpose + 67 @=> midi["G4"];
transpose + 68 @=> midi["G#4"];
transpose + 68 @=> midi["A-4"];
transpose + 69 @=> midi["A4"];
transpose + 70 @=> midi["A#4"];
transpose + 70 @=> midi["B-4"];
transpose + 71 @=> midi["B4"];
transpose + 72 @=> midi["C5"];
transpose + 73 @=> midi["C#5"];
transpose + 73 @=> midi["D-5"];
transpose + 74 @=> midi["D5"];
transpose + 75 @=> midi["D#5"];
transpose + 75 @=> midi["E-5"];
transpose + 76 @=> midi["E5"];
transpose + 77 @=> midi["F5"];
transpose + 78 @=> midi["F#5"];
transpose + 78 @=> midi["G-5"];
transpose + 79 @=> midi["G5"];
transpose + 80 @=> midi["G#5"];
transpose + 81 @=> midi["A5"];
transpose + 82 @=> midi["B-5"];
transpose + 83 @=> midi["B5"];
transpose + 84 @=> midi["C6"];
transpose + 85 @=> midi["C#6"];
transpose + 86 @=> midi["D6"];
transpose + 87 @=> midi["E-6"];
transpose + 88 @=> midi["E6"];
transpose + 89 @=> midi["F6"];
transpose + 90 @=> midi["F#6"];
transpose + 91 @=> midi["G6"];
transpose + 92 @=> midi["G#6"];
transpose + 93 @=> midi["A6"];
transpose + 94 @=> midi["B-6"];
transpose + 95 @=> midi["B6"];
transpose + 96 @=> midi["C7"];
transpose + 97 @=> midi["C#7"];
transpose + 98 @=> midi["D7"];
transpose + 99 @=> midi["E-7"];
transpose + 100 @=> midi["E7"];
transpose + 101 @=> midi["F7"];
transpose + 102 @=> midi["F#7"];
transpose + 103 @=> midi["G7"];
transpose + 104 @=> midi["G#7"];
transpose + 105 @=> midi["A7"];
transpose + 106 @=> midi["B-7"];
transpose + 107 @=> midi["B7"];
transpose + 108 @=> midi["C8"];
transpose + 109 @=> midi["C#8"];
transpose + 110 @=> midi["D8"];
transpose + 111 @=> midi["E-8"];
transpose + 112 @=> midi["E8"];
transpose + 113 @=> midi["F8"];
transpose + 114 @=> midi["F#8"];
transpose + 115 @=> midi["G8"];
transpose + 116 @=> midi["G#8"];
transpose + 117 @=> midi["A8"];
transpose + 118 @=> midi["B-8"];
transpose + 119 @=> midi["B8"];
transpose + 120 @=> midi["C9"];
transpose + 121 @=> midi["C#9"];
transpose + 122 @=> midi["D9"];
transpose + 123 @=> midi["E-9"];
transpose + 124 @=> midi["E9"];
transpose + 125 @=> midi["F9"];
transpose + 126 @=> midi["F#9"];
/* MIDI Notes End */
/* Velocity Expressions */
float vol[0];
.9 => vol["ff"];
.75 => vol["f"];
.6 => vol["mf"];
.4 => vol["mp"];
.15 => vol["p"];
.1 => vol["pp"];
/* Velocity Expressions End */

/* Song Structure */
dur structure[0];
duration(2, 2) => structure["intro"];
duration(16.5, 2) => structure["1"];
duration(1, 2) => structure["1->2"];
duration(20.5, 2) => structure["2"];
duration(2, 2) => structure["outro"];
/* Song Structure End */

/* Dombra */
Mandolin dombras[3];
Gain dombraVelocity => Gain dombraGain => NRev dombraRev => MASTER;
0.05 => dombraRev.mix;
//Noise dombraNoise => Gain dombraNoiseGain => ResonZ dombraNoiseFilt => Gain dombraNoiseMaster => MASTER;
//0.0 => dombraNoiseGain.gain;
//0.3 => dombraNoiseMaster.gain;

for (0 => int i; i < dombras.cap(); i++) {
  dombras[i] => dombraVelocity;
  0.6 => dombras[i].bodySize; // dombra has a small body
  0.33 => dombras[i].pluckPos;  //
  0.0005 => dombras[i].stringDetune;  // just very little -- don't want it sounds like Yangqin
  .6 => dombras[i].stringDamping;
}
0.165 => dombraGain.gain;

Aflat_major_on_Eflat() @=> PitchGenerator dombrasPitchGenerator[];
Rhythm1() @=> RhythmDescriptor dombraRhythm[];

fun void send_midi_off (dur d, int data1, int data2, int data3) {
  d => now;
  MidiMsg msg;
  data1 => msg.data1;
  data2 => msg.data2;
  data3 => msg.data3;
  midi_out.send(msg);
}

fun void play_dombra () {
  while (true) {
    dombraRhythm.cap() => int realTimeRhythmCap;
    for (0 => int i; i < realTimeRhythmCap; i++) {
      //<<< i, dombraRhythm.cap() >>>;
      dombraRhythm.cap() => realTimeRhythmCap;
      if (i >= realTimeRhythmCap) break;

      shuffled_range(dombrasPitchGenerator.cap()) @=> int srange[];
      0::second => dur delay;
      dur thisDelay;

      Std.rand2f(0.25, 0.4) => float pluckPos;
      for (0 => int pj; pj < srange.cap(); pj++) {
        srange[pj] => int j;
        if (j < dombras.cap()) {
          //1 => dombras[j].noteOff;
          //duration(Std.rand2f(0, 0.05), 32) => thisDelay;
          thisDelay => now;
          delay + thisDelay => delay;
          dombrasPitchGenerator[j].generate() => float pit;
          Std.mtof(pit) => dombras[j].freq;
          MidiMsg msg;
          144 => msg.data1;
          pit $ int => msg.data2;
          (dombraRhythm[i].velocity * 127) $ int => msg.data3;
          midi_out.send(msg);
//          spork ~ send_midi_off(dombraRhythm[i].duration, 128, pit $ int, (dombraRhythm[i].velocity * 127) $ int);

          pluckPos => dombras[j].pluckPos;
          1 => dombras[j].noteOn;
        } else {
          <<< "WARNING  exceed polyphonic number of dombras" >>>;
        }
      }
      float fluc;
//      float noiseGain;
      if (dombraRhythm[i].velocity != 0.0) {
        Std.rand2f(-.05, .05) => fluc;
      }
      else {
        0 => fluc;
      }

//      if (dombraRhythm[i].velocity == 0.0 && dombraVelocity.gain() > 0)
//        0.8 => noiseGain;  // cut
//      else if (dombraRhythm[i].velocity >= vol["mf"])
//        dombraRhythm[i].velocity => noiseGain;
//      else
//        0 => noiseGain;

      dombraRhythm[i].velocity + fluc => dombraVelocity.gain;

//      Std.rand2f(2000, 3000) => dombraNoiseFilt.freq;
//      Std.rand2f(0.75, 1) => dombraNoiseFilt.Q;
//      spork ~ dombraNoise_noteOn(noiseGain);
//      noiseGain => dombraNoiseGain.gain;
      (dombraRhythm[i].duration - delay) => now;
    }
  }
}
//fun void dombraNoise_noteOn (float noiseGain) {
  //noiseGain => dombraNoiseGain.gain;
//  0.02::second => now;
//  0.0 => dombraNoiseGain.gain;
//}
fun void change_dombra_chords_1 () {
  Aflat_major_on_Eflat() @=> dombrasPitchGenerator;duration(3, 2) => now; // 1 end
  Dflat_major() @=> dombrasPitchGenerator;duration(1, 2) => now;
  Aflat_major_on_C() @=> dombrasPitchGenerator;duration(1, 2) => now;     // 2 end
  Aflat_dom7_on_Gflat() @=> dombrasPitchGenerator;duration(1, 2) => now;
  Dflat_major_on_F() @=> dombrasPitchGenerator;duration(1, 2) => now;
  Aflat_major_on_Eflat_high() @=> dombrasPitchGenerator;duration(1, 2) => now; // 3 end
  Dflat_major() @=> dombrasPitchGenerator;duration(1, 2) => now;
  D_m7b5() @=> dombrasPitchGenerator;duration(1, 2) => now;
  Eflat_major_add9() @=> dombrasPitchGenerator;duration(1, 2) => now;          // 4 end
  F_minor() @=> dombrasPitchGenerator;duration(1, 2) => now;
  C_minor7_on_Eflat() @=> dombrasPitchGenerator;duration(1, 2) => now;
  D_m7b5() @=> dombrasPitchGenerator;duration(1.5, 2) => now;             // 5 end
  Dflat_major7() @=> dombrasPitchGenerator;duration(1, 4) => now;
  Bflat_dom7_on_D() @=> dombrasPitchGenerator;duration(1, 4) => now;
  Eflat_major() @=> dombrasPitchGenerator;duration(1, 2) => now;          // 6 end
}
fun void change_dombra_rhythm_1 () {
  Rhythm1() @=> dombraRhythm;duration(2, 2) => now;
  Rhythm1_a() @=> dombraRhythm;duration(1, 2) => now;  // 1 end
  Rhythm1() @=> dombraRhythm;duration(1, 2) => now;
  Rhythm1_a() @=> dombraRhythm;duration(1, 2) => now;  // 2 end
  Rhythm1() @=> dombraRhythm;duration(2, 2) => now;
  Rhythm1_a() @=> dombraRhythm;duration(1, 2) => now;  // 3 end
  Rhythm1() @=> dombraRhythm;duration(2, 2) => now;
  Rhythm1_b() @=> dombraRhythm;duration(1, 2) => now;  // 4 end
  Rhythm2() @=> dombraRhythm;duration(1, 2) => now;
  Rhythm4() @=> dombraRhythm;duration(2, 2) => now;
  [rhythm(duration(2.7, 32), vol["f"]),
   rhythm(duration(2.7, 32), vol["f"]), rhythm(duration(2.6, 32), vol["f"])
   ] @=> dombraRhythm;duration(1, 4) => now;           // 5 end
  Rhythm5() @=> dombraRhythm;duration(1, 2) => now;
  [rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["p"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), 0)
   ] @=> dombraRhythm;duration(1, 2) => now;  // 6 end
  Rhythm1_b() @=> dombraRhythm;
}
fun void change_dombra_chords_2 () {
  change_dombra_chords_1();
  F_minor() @=> dombrasPitchGenerator;duration(.5, 2) => now;
  F_minor_on_E() @=> dombrasPitchGenerator;duration(.5, 2) => now;
  D_m7b5() @=> dombrasPitchGenerator;duration(1, 2) => now;
  F_dom7_on_Eflat() @=> dombrasPitchGenerator;duration(.5, 2) => now;
  Eflat_7sus4_on_Dflat() @=> dombrasPitchGenerator;duration(.5, 2) => now;
  Aflat_major_on_C_low() @=> dombrasPitchGenerator;duration(1, 2) => now;     //
}
fun void change_dombra_rhythm_2 () {
  change_dombra_rhythm_1();
  Rhythm2() @=> dombraRhythm;duration(1, 2) => now;
  Rhythm3() @=> dombraRhythm;duration(1, 2) => now;
  Rhythm5() @=> dombraRhythm;duration(1, 2) => now;
  Rhythm2() @=> dombraRhythm;duration(1, 2) => now;  // ending
  [rhythm(duration(1, 16), vol["ff"])] @=> dombraRhythm;duration(1, 16) => now;
  [rhythm(duration(1, 16), 0)] @=> dombraRhythm;duration(1, 16) => now;

}

// chords
fun PitchGenerator[]  Aflat_major_on_Eflat () {
  [makePitchGenerator([pitchDist(midi["E-4"], 1)]),
   makePitchGenerator([pitchDist(midi["A-4"], 0.5), pitchDist(midi["B-4"], 0.25)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Aflat_major_on_Eflat_high () {
  [makePitchGenerator([pitchDist(midi["E-4"], 1)]),
   makePitchGenerator([pitchDist(midi["C5"], 0.5), pitchDist(midi["B-4"], 0.2)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Dflat_major () {
  [makePitchGenerator([pitchDist(midi["D-4"], 1)]),
   makePitchGenerator([pitchDist(midi["A-4"], 0.5), pitchDist(midi["B-4"], 0.2)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Aflat_major_on_C_low () {
  [makePitchGenerator([pitchDist(midi["C4"], 1), pitchDist(midi["E-4"], 0.4)]),
   makePitchGenerator([pitchDist(midi["A-4"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Aflat_major_on_C () {
  [makePitchGenerator([pitchDist(midi["C4"], 1)]),
   makePitchGenerator([pitchDist(midi["B-4"], 0.12), pitchDist(midi["A-4"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Aflat_dom7_on_Gflat () {
  [makePitchGenerator([pitchDist(midi["G-4"], 1)]),
   makePitchGenerator([pitchDist(midi["C5"], 0.5), pitchDist(midi["B-4"], 0.1)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Dflat_major_on_F () {
  [makePitchGenerator([pitchDist(midi["F4"], 1)]),
   makePitchGenerator([pitchDist(midi["D-5"], 0.1)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  D_m7b5 () {
  [makePitchGenerator([pitchDist(midi["D4"], 1)]),
   makePitchGenerator([pitchDist(midi["A-4"], 0.4)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Eflat_major_add9 () {
  [makePitchGenerator([pitchDist(midi["E-4"], 1)]),
   makePitchGenerator([pitchDist(midi["F4"], 0.2), pitchDist(midi["G4"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Eflat_major () {
  [makePitchGenerator([pitchDist(midi["E-4"], 1)]),
   makePitchGenerator([pitchDist(midi["G4"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  F_minor () {
  [makePitchGenerator([pitchDist(midi["F4"], 1)]),
   makePitchGenerator([pitchDist(midi["C5"], 0.5), pitchDist(midi["A-4"], 0.2)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  C_minor7_on_Eflat () {
  [makePitchGenerator([pitchDist(midi["E-4"], 1)]),
   makePitchGenerator([pitchDist(midi["C5"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Dflat_major7 () {
  [makePitchGenerator([pitchDist(midi["D-4"], 1)]),
   makePitchGenerator([pitchDist(midi["F4"], 0.1)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Bflat_dom7_on_D () {
  [makePitchGenerator([pitchDist(midi["D4"], 1)]),
   makePitchGenerator([pitchDist(midi["A-4"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  F_minor_on_E () {
  [makePitchGenerator([pitchDist(midi["E4"], 1)]),
   makePitchGenerator([pitchDist(midi["C5"], 0.5), pitchDist(midi["A-4"], 0.3)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  F_dom7_on_Eflat () {
  [makePitchGenerator([pitchDist(midi["E-4"], 1)]),
   makePitchGenerator([pitchDist(midi["F4"], 0.5)]),
   makePitchGenerator([pitchDist(midi["A4"], 0.3)])
   ] @=> PitchGenerator pg[];return pg;
}
fun PitchGenerator[]  Eflat_7sus4_on_Dflat () {
  [makePitchGenerator([pitchDist(midi["D-4"], 1)]),
   makePitchGenerator([pitchDist(midi["A-4"], 0.5)]),
   makePitchGenerator([pitchDist(midi["E-4"], 0.5)])
   ] @=> PitchGenerator pg[];return pg;
}

// rhythm patterns
fun RhythmDescriptor[]  Rhythm1 () {  // x0xx 0xx0
  [rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 32), vol["p"]), rhythm(duration(1, 32), vol["p"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["p"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["p"])
   ] @=> RhythmDescriptor r[];return r;
}
fun RhythmDescriptor[]  Rhythm1_a () { //x0xx 0xxx
  [rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 32), vol["p"]), rhythm(duration(1, 32), vol["p"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["p"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"])
   ] @=> RhythmDescriptor r[];return r;
}
fun RhythmDescriptor[]  Rhythm1_b () { // x0xx xxxx
  [rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 32), vol["p"]), rhythm(duration(1, 32), vol["p"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"])
   ] @=> RhythmDescriptor r[];return r;
}
fun RhythmDescriptor[]  Rhythm2 () {  // xx0x 0xx0
  [rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["p"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["p"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["p"])
   ] @=> RhythmDescriptor r[];return r;
}
fun RhythmDescriptor[]  Rhythm3 () { // xxx0 xxx0
  [rhythm(duration(1, 16), vol["ff"]), rhythm(duration(1, 16), vol["ff"]),
   rhythm(duration(1, 16), vol["ff"]), rhythm(duration(1, 16), 0),
   rhythm(duration(1, 16), vol["ff"]), rhythm(duration(1, 16), vol["ff"]),
   rhythm(duration(1, 16), vol["ff"]), rhythm(duration(1, 16), 0)
   ] @=> RhythmDescriptor r[];return r;
}
fun RhythmDescriptor[]  Rhythm4 () {  // x000 0xxx
  [rhythm(duration(1, 4), vol["ff"]),
   rhythm(duration(1, 16), 0), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"])
   ] @=> RhythmDescriptor r[];return r;
}
fun RhythmDescriptor[]  Rhythm5 () {  // xx00
  [rhythm(duration(1, 16), vol["f"]), rhythm(duration(1, 16), vol["f"]),
   rhythm(duration(1, 16), 0), rhythm(duration(1, 16), 0)
   ] @=> RhythmDescriptor r[];return r;
}
/* Dombra End */


/* Utility */
fun dur duration (float numerator, float denominator) {
  return (numerator / denominator * 240.0 / TEMPO)::second;
}
class RhythmDescriptor {
  float velocity;
  dur duration;
}
fun RhythmDescriptor rhythm (dur duration, float velocity) {
  RhythmDescriptor r;
  duration => r.duration;
  velocity => r.velocity;
  return r;
}
class NoteDescriptor {
  float midiNote;
  dur duration;
}
fun NoteDescriptor note (float midiNote, dur duration) {
  NoteDescriptor r;
  midiNote => r.midiNote;
  duration => r.duration;
  return r;
}
class PitchDistributionUnit {
  float pitch;
  float prob;
}
fun PitchDistributionUnit pitchDist (float pitch, float prob) {
  PitchDistributionUnit p;
  pitch => p.pitch;
  prob => p.prob;
  return p;
}
class PitchGenerator {
  float pitches[];
  float accumulate_prob[];
  0 => float prob_sum;
  fun float generate () {
    Std.rand2f(0, prob_sum) => float p;
    for (0 => int i; i < pitches.cap(); i++) {
      if (p < accumulate_prob[i]) return pitches[i];
    }

    <<< "WARNING  PitchGenerator: invalid prob" >>>;
    return pitches[0];
  }
}
fun PitchGenerator makePitchGenerator (PitchDistributionUnit ps[]) {
  PitchGenerator pg;
  float pitches[ps.cap()];
  float accumulate_prob[ps.cap()];
  for (0 => int i; i < ps.cap(); i++) {
    pg.prob_sum + ps[i].prob => pg.prob_sum;
    ps[i].pitch => pitches[i];
    pg.prob_sum => accumulate_prob[i];
  }
  pitches @=> pg.pitches;
  accumulate_prob @=> pg.accumulate_prob;
  return pg;
}
fun int [] shuffled_range (int n) {
  int list[n];
  for (0 => int i; i < n; i++) i => list[i];
  int p_i;
  int p_j;
  int temp;
  for (0 => int i; i < n; i++) {
    Math.floor(Std.rand2f(0, n - 0.001)) $ int => p_i;  // cast
    Math.floor(Std.rand2f(0, n - 0.001)) $ int => p_j;  // cast
    list[p_i] => temp;
    list[p_j] => list[p_i];
    temp => list[p_j];
  }
  return list;
}
/* Utility End */

/* Channels */
fun void channel_lead () {
  SndBuf lead1 => MASTER;
  SndBuf lead2 => MASTER;
  0.5 => lead1.gain => lead2.gain;
  1.0 * (TEMPO / 72.0) => lead1.rate => lead2.rate;
  me.dir() => string path;  // directory of this file

  structure["intro"] - duration(4, 4) => now;
  duration(2.94, 4) => now;  // let sound on the beats
  path + "/lead_1.wav" => lead1.read;  // open up sound file
  0 => lead1.pos;  // sets playhead position
  structure["1"] + structure["1->2"] - duration(4, 4) => now;
  duration(3.89, 4) => now;  // let sound on the beats,
  path + "/lead_2.wav" => lead2.read;  // open up sound file
  0 => lead2.pos;  // sets playhead position
  structure["2"] => now;
  structure["outro"] => now;
}

fun void channel_dombra () {
  spork ~ play_dombra();
  structure["intro"] => now;
  spork ~ change_dombra_chords_1();
  spork ~ change_dombra_rhythm_1();
  structure["1"] => now;
  Eflat_major_add9() @=> dombrasPitchGenerator;structure["1->2"] => now;
  spork ~ change_dombra_chords_2();
  spork ~ change_dombra_rhythm_2();
  structure["2"] => now;
  structure["outro"] => now;
}
fun void channel_bass () {
  Mandolin bass => Gain bassGain => MASTER;
  0.2 => bassGain.gain;
  0.05 => bass.bodySize;
  0.3 => bass.pluckPos;
  0.05 => bass.stringDetune;
  0.0 => bass.stringDamping;
  //structure["intro"] => now;
  while (true) {
    break;
    Std.mtof(midi["G#2"]-12) => bass.freq;
    1 => bass.noteOn;
    duration(2, 4) => now;
  }
}
fun void channel_flute () {
  Clarinet flute => Gain fluteGain => NRev rev => MASTER;
  0.04 => fluteGain.gain;
  0.1 => rev.mix;
  structure["intro"] => now;
  structure["1"] => now;
  structure["1->2"] => now;
  [
   note(midi["C5"], duration(1.5, 4)),
   note(midi["A#4"], duration(0.5, 4)),
   note(midi["C5"], duration(1.5, 4)),
   note(midi["A#4"], duration(0.5, 4)),
   note(midi["G#4"], duration(2, 4)), // 1
   note(-1, duration(0.5, 4)),
   note(midi["G#5"], duration(1, 4)),
   note(midi["G5"], duration(.25, 4)),
   note(midi["F5"], duration(.25, 4)),
   note(midi["D#5"], duration(2, 4)), // 2
   note(-1, duration(1, 4)),
   note(midi["D#5"], duration(1, 4)),
   note(midi["G#5"], duration(1.5, 4)),
   note(midi["G5"], duration(.25, 4)),
   note(midi["F5"], duration(.25, 4)),
   note(midi["D#5"], duration(1, 4)),
   note(midi["C5"], duration(1, 4)),  //3
   note(midi["G#4"], duration(2.5, 4)),
   note(-1, duration(.5, 4)),
   note(midi["G#4"], duration(1, 4)),
   note(midi["A#4"], duration(2, 4)), // 4
   note(midi["C6"], duration(1.75, 4)),
   note(-1, duration(0.25, 4)),
   note(-1, duration(2, 4)), // tai
   note(-1, duration(1.5, 4)),
   note(-1, duration(1, 4)), // tai
   note(-1, duration(0.5, 4)),
   note(-1, duration(2, 4)),
   note(midi["G4"], duration(3, 8)),
   note(-1, duration(1, 8)), // ai
   note(-1, duration(1, 4)),
   note(-1, duration(1, 4)),
   note(-1, duration(0.5, 4)), //wo
   note(-1, duration(1.5, 4)),
   note(midi["C5"], duration(1, 4)), // ban xiang
   note(midi["A#4"], duration(1, 4)),
   note(midi["G#4"], duration(2, 4))


   ] @=> NoteDescriptor notes[];

  for (0 => int i; i < notes.cap(); i++) {
    notes[i].midiNote => float n;
    if (n > -1.0) {
      Std.mtof(notes[i].midiNote) => flute.freq;
      1 => flute.noteOn;
    } else {
      1 => flute.noteOff;
    }
    notes[i].duration => now;
  }
}

fun void channel_metronome () {
  ModalBar metronome => MASTER;
  3 => metronome.preset;
  880 => metronome.freq;
  while (true) {
    1 => metronome.noteOn;
    duration(1, 4) => now;
  }
}
fun void channel_mudbox () {
  Noise noise => Gain noiseGain => ResonZ filt => MASTER;
  0.0 => noiseGain.gain;
  880 => filt.freq;
  0.5 => filt.Q;
  while (true) {
    duration(1, 2)-0.02::second => now;
    Std.rand2f(2000, 3000) => filt.freq;
    Std.rand2f(0.75, 1) => filt.Q;
    <<< filt.freq(), filt.Q() >>>;
    0.5 => noiseGain.gain;
    0.02::second => now;
    0.0 => noiseGain.gain;
  }
}
/* Channels End */

/* Start Song */

<<< "Song Gaerlitai ready!" >>>;
//spork ~ channel_metronome();  // debug
spork ~ channel_dombra();
spork ~ channel_lead();
//spork ~ channel_bass();
spork ~ channel_flute();
//spork ~ channel_mudbox();

structure["intro"] => now;
structure["1"] => now;
structure["1->2"] => now;
structure["2"] => now;
structure["outro"] => now;
1::second => now;
wav_out.closeFile();
