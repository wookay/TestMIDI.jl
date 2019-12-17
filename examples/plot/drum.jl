using MIDI
using MusicVisualizations

midi_file = normpath(@__DIR__, "../MIDI_Drum_Patterns/RnB - 140bpm.mid")
midi = readMIDIFile(midi_file)
notes = getnotes(midi, 1)
notegrid = 0:1//4:1
noteplotter(notes; grid = notegrid)

midi_file = normpath(@__DIR__, "../MIDI_Drum_Patterns/90s Hip Hop - 90bpm.mid")
midi = readMIDIFile(midi_file)
notes = getnotes(midi, 1)
notegrid = 0:1//4:1
noteplotter(notes; grid = notegrid)


#=
positions = [note.position for note in notes]
pitches = [note.pitch for note in notes]
durations = [note.duration for note in notes]
=#
