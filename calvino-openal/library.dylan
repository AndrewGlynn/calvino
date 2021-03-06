module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library calvino-openal
  use dylan;
  use common-dylan;
  use c-ffi;

  export calvino-openal;
end library;

define module calvino-openal
  use common-dylan;
  use c-ffi;

  export
    $AL-BITS,
    $AL-BUFFER,
    $AL-BUFFERS-PROCESSED,
    $AL-BUFFERS-QUEUED,
    $AL-BYTE-OFFSET,
    $AL-CHANNELS,
    $AL-CONE-INNER-ANGLE,
    $AL-CONE-OUTER-ANGLE,
    $AL-CONE-OUTER-GAIN,
    $AL-DIRECTION,
    $AL-DISTANCE-MODEL,
    $AL-DOPPLER-FACTOR,
    $AL-DOPPLER-VELOCITY,
    $AL-EXPONENT-DISTANCE,
    $AL-EXPONENT-DISTANCE-CLAMPED,
    $AL-EXTENSIONS,
    $AL-FALSE,
    $AL-FORMAT-MONO16,
    $AL-FORMAT-MONO8,
    $AL-FORMAT-STEREO16,
    $AL-FORMAT-STEREO8,
    $AL-FREQUENCY,
    $AL-GAIN,
    $AL-ILLEGAL-COMMAND,
    $AL-ILLEGAL-ENUM,
    $AL-INITIAL,
    $AL-INVALID,
    $AL-INVALID-ENUM,
    $AL-INVALID-NAME,
    $AL-INVALID-OPERATION,
    $AL-INVALID-VALUE,
    $AL-INVERSE-DISTANCE,
    $AL-INVERSE-DISTANCE-CLAMPED,
    $AL-LINEAR-DISTANCE,
    $AL-LINEAR-DISTANCE-CLAMPED,
    $AL-LOOPING,
    $AL-MAX-DISTANCE,
    $AL-MAX-GAIN,
    $AL-MIN-GAIN,
    $AL-NO-ERROR,
    $AL-NONE,
    $AL-ORIENTATION,
    $AL-OUT-OF-MEMORY,
    $AL-PAUSED,
    $AL-PENDING,
    $AL-PITCH,
    $AL-PLAYING,
    $AL-POSITION,
    $AL-PROCESSED,
    $AL-REFERENCE-DISTANCE,
    $AL-RENDERER,
    $AL-ROLLOFF-FACTOR,
    $AL-SAMPLE-OFFSET,
    $AL-SEC-OFFSET,
    $AL-SIZE,
    $AL-SOURCE-RELATIVE,
    $AL-SOURCE-STATE,
    $AL-SOURCE-TYPE,
    $AL-SPEED-OF-SOUND,
    $AL-STATIC,
    $AL-STOPPED,
    $AL-STREAMING,
    $AL-TRUE,
    $AL-UNDETERMINED,
    $AL-UNUSED,
    $AL-VELOCITY,
    $AL-VENDOR,
    $AL-VERSION,
    <ALboolean*>,
    <ALboolean>,
    <ALbyte>,
    <ALchar*>,
    <ALchar>,
    <ALdouble*>,
    <ALdouble>,
    <ALenum>,
    <ALfloat*>,
    <ALfloat>,
    <ALint*>,
    <ALint>,
    <ALshort>,
    <ALsizei>,
    <ALubyte>,
    <ALuint*>,
    <ALuint>,
    <ALushort>,
    <ALvoid*>,
    <ALvoid>,
    <LPALBUFFER3F>,
    <LPALBUFFER3I>,
    <LPALBUFFERDATA>,
    <LPALBUFFERF>,
    <LPALBUFFERFV>,
    <LPALBUFFERI>,
    <LPALBUFFERIV>,
    <LPALDELETEBUFFERS>,
    <LPALDELETESOURCES>,
    <LPALDISABLE>,
    <LPALDISTANCEMODEL>,
    <LPALDOPPLERFACTOR>,
    <LPALDOPPLERVELOCITY>,
    <LPALENABLE>,
    <LPALGENBUFFERS>,
    <LPALGENSOURCES>,
    <LPALGETBOOLEAN>,
    <LPALGETBOOLEANV>,
    <LPALGETBUFFER3F>,
    <LPALGETBUFFER3I>,
    <LPALGETBUFFERF>,
    <LPALGETBUFFERFV>,
    <LPALGETBUFFERI>,
    <LPALGETBUFFERIV>,
    <LPALGETDOUBLE>,
    <LPALGETDOUBLEV>,
    <LPALGETENUMVALUE>,
    <LPALGETERROR>,
    <LPALGETFLOAT>,
    <LPALGETFLOATV>,
    <LPALGETINTEGER>,
    <LPALGETINTEGERV>,
    <LPALGETLISTENER3F>,
    <LPALGETLISTENER3I>,
    <LPALGETLISTENERF>,
    <LPALGETLISTENERFV>,
    <LPALGETLISTENERI>,
    <LPALGETLISTENERIV>,
    <LPALGETPROCADDRESS>,
    <LPALGETSOURCE3F>,
    <LPALGETSOURCE3I>,
    <LPALGETSOURCEF>,
    <LPALGETSOURCEFV>,
    <LPALGETSOURCEI>,
    <LPALGETSOURCEIV>,
    <LPALGETSTRING>,
    <LPALISBUFFER>,
    <LPALISENABLED>,
    <LPALISEXTENSIONPRESENT>,
    <LPALISSOURCE>,
    <LPALLISTENER3F>,
    <LPALLISTENER3I>,
    <LPALLISTENERF>,
    <LPALLISTENERFV>,
    <LPALLISTENERI>,
    <LPALLISTENERIV>,
    <LPALSOURCE3F>,
    <LPALSOURCE3I>,
    <LPALSOURCEF>,
    <LPALSOURCEFV>,
    <LPALSOURCEI>,
    <LPALSOURCEIV>,
    <LPALSOURCEPAUSE>,
    <LPALSOURCEPAUSEV>,
    <LPALSOURCEPLAY>,
    <LPALSOURCEPLAYV>,
    <LPALSOURCEQUEUEBUFFERS>,
    <LPALSOURCEREWIND>,
    <LPALSOURCEREWINDV>,
    <LPALSOURCESTOP>,
    <LPALSOURCESTOPV>,
    <LPALSOURCEUNQUEUEBUFFERS>,
    <LPALSPEEDOFSOUND>,
    alBuffer3f,
    alBuffer3i,
    alBufferData,
    alBufferf,
    alBufferfv,
    alBufferi,
    alBufferiv,
    alDeleteBuffers,
    alDeleteSources,
    alDisable,
    alDistanceModel,
    alDopplerFactor,
    alDopplerVelocity,
    alEnable,
    alGenBuffers,
    alGenSources,
    alGetBoolean,
    alGetBooleanv,
    alGetBuffer3f,
    alGetBuffer3i,
    alGetBufferf,
    alGetBufferfv,
    alGetBufferi,
    alGetBufferiv,
    alGetDouble,
    alGetDoublev,
    alGetEnumValue,
    alGetError,
    alGetFloat,
    alGetFloatv,
    alGetInteger,
    alGetIntegerv,
    alGetListener3f,
    alGetListener3i,
    alGetListenerf,
    alGetListenerfv,
    alGetListeneri,
    alGetListeneriv,
    alGetProcAddress,
    alGetSource3f,
    alGetSource3i,
    alGetSourcef,
    alGetSourcefv,
    alGetSourcei,
    alGetSourceiv,
    alGetString,
    alIsBuffer,
    alIsEnabled,
    alIsExtensionPresent,
    alIsSource,
    alListener3f,
    alListener3i,
    alListenerf,
    alListenerfv,
    alListeneri,
    alListeneriv,
    alSource3f,
    alSource3i,
    alSourcePause,
    alSourcePausev,
    alSourcePlay,
    alSourcePlayv,
    alSourceQueueBuffers,
    alSourceRewind,
    alSourceRewindv,
    alSourceStop,
    alSourceStopv,
    alSourceUnqueueBuffers,
    alSourcef,
    alSourcefv,
    alSourcei,
    alSourceiv,
    alSpeedOfSound;
end module;
