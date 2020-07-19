from faceit import *

faceit = FaceIt('hepburn_to_ohara', 'hepburn', 'ohara')
#faceit.add_video('hepburn', 'charade.mp4', 'https://www.youtube.com/watch?v=-uc86VH8hdA')
#faceit.add_video('ohara', 'mclintock.mp4', 'https://www.youtube.com/watch?v=_e-yIzO1oWA')
#faceit.add_video('ohara', 'last_scene.mp4', 'https://www.youtube.com/watch?v=nU0jMZ5zVtk')
#faceit.add_video('ohara', 'chess.mp4', 'https://www.youtube.com/watch?v=KdmrrwPM1Aw')
faceit.add_video('hepburn', 'strangers_meet.mp4', 'https://www.youtube.com/watch?v=Qgsst15iI2k')
faceit.add_video('hepburn', 'who_trust.mp4', 'https://www.youtube.com/watch?v=ziVJd7Fwzvc')

FaceIt.add_model(faceit)
#faceit.preprocess()
#faceit.train()
#faceit.convert(
#    'strangers_meet.mp4',
#    use_gan=False,
#    face_filter=True,
#    photos=False,
#    start_time=0,
#    duration=120
#)
faceit.convert(
    'who_trust.mp4',
    use_gan=False,
    face_filter=True,
    photos=False,
    start_time=0,
    duration=120
)
