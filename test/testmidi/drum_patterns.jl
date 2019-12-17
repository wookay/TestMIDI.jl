using Jive
@useinside module test_testmidi_drum_patterns

using Test
using MIDI

midi_file = normpath(@__DIR__, "../../examples/MIDI_Drum_Patterns/90s Hip Hop - 90bpm.mid")
midi = readMIDIFile(midi_file)
@test midi.tpq == 96

notes = getnotes(midi, 1)
@test notes.tpq == 96

@test notes[1].pitch == 0x24
@test notes[1].velocity == 0x7f
@test notes[1].position == 0x0000000000000000
@test notes[1].duration == 0x0000000000000018
@test notes[1].channel == 0x00

# Note(pitch, velocity, position, duration, channel = 0)
C = MIDI.Note(60, 96, 0,  5) # 0x3c
G = MIDI.Note(67, 96, 48, 5) # 0x43
E = MIDI.Note(64, 96, 96, 5) # 0x40

end # module test_testmidi_drum_patterns
