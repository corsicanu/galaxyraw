.class public Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;
.super Ljava/lang/Object;
.source "CameraAudioManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;


# static fields
.field private static final DELAY_TIME_TO_DISABLE_AUDIO_SYSTEM_SOUND:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CameraAudioManagerImpl"

.field private static final WAIT_BLUETOOTH_MIC_CLOSE_DURATION:I = 0x3e8

.field private static final WAIT_BLUETOOTH_MIC_OPEN_DURATION:I = 0xbb8


# instance fields
.field private mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field private mBluetoothMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

.field private mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

.field private mExternalInputDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

.field private mIsBluetoothMicOpened:Z

.field private mIsShutterSoundForced:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

.field private final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundManager:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$ikNuhUocW3JHXC5InMZLT0pevL8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$ikNuhUocW3JHXC5InMZLT0pevL8;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mFocusRequest:Landroid/media/AudioFocusRequest;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$4;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->handleWiredHeadsetPluggedIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->handleWiredHeadsetPluggedOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->updateBluetoothDevice()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->handleBluetoothAudioStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->handleBluetoothConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private addBluetoothDevice()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_BLUETOOTH_MIX_MIC:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private changeInputType(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeInputType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->updatePreferredDevice(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(ZI)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->reopenBluetoothMic()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(ZI)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->reopenBluetoothMic()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMode(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(ZI)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->setInternalMic(I)V

    :goto_0
    return-void
.end method

.method private checkForcedShutterSound()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isForceShutterSoundRequired(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isForcedSoundWaiverCondition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1202ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForcedShutterSound : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraAudioManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeBluetoothMic()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "closeBluetoothMic"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->waitUntilBluetoothMicClosed()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->abandonAudioFocus()V

    :cond_0
    return-void
.end method

.method private closeBluetoothProxy()V
    .locals 5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraAudioManagerImpl"

    if-nez v0, :cond_0

    const-string v0, "closeBluetoothProxy : adapter is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeBluetoothProxy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method private disableAudioSystemSound()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->disableSystemSound(Landroid/content/Context;)V

    return-void
.end method

.method private handleBluetoothAudioStateChanged(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->semGetHighPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_a

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_3

    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBluetoothAudioStateChanged action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", device : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", state : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xc

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "handleBluetoothAudioStateChanged return : Monitor is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    :cond_a
    :goto_2
    return-void
.end method

.method private handleBluetoothConnectionStateChanged(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", device : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraAudioManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->updateBluetoothDevice()V

    :cond_2
    return-void
.end method

.method private handleWiredHeadsetPluggedIn()V
    .locals 3

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "handleWiredHeadsetPluggedIn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v2, 0x7f1203e4

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v2, 0x7f1203e5

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isMultiMicZoomFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(ZI)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private handleWiredHeadsetPluggedOut()V
    .locals 3

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "handleWiredHeadsetPluggedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_2
    return-void
.end method

.method private initializeBluetoothDevice()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isBluetoothMicAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->addBluetoothDevice()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->removeBluetoothDevice()V

    :goto_0
    return-void
.end method

.method private initializeInputDeviceList()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->initializeInternalDevice()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->initializeWiredDevice()V

    return-void
.end method

.method private initializeInternalDevice()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    return-void
.end method

.method private initializeSettingChangedListenerKey()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initializeWiredDevice()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private isBluetoothMicAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const-string v2, "CameraAudioManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "isBluetoothMicAvailable : BT Headset is not connected!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_1

    const-string p0, "isBluetoothMicAvailable : BT device is not connected!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 v3, 0x64

    invoke-virtual {v0, p0, v3}, Landroid/bluetooth/BluetoothHeadset;->semGetHeadsetSetting(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "BluetoothDevice is not support VoiceRecognition!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isPlaySoundAvailable()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SHUTTER_SOUND_MENU:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CameraAudioManagerImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "isPlaySoundAvailable : Sound option is turned off."

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isShutterSoundForced()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isPlaySoundAvailable : There is ongoing call."

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3
.end method

.method private isSetPreferredDeviceRequired(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1
.end method

.method private isShutterSoundForced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    return p0
.end method

.method public static synthetic lambda$ikNuhUocW3JHXC5InMZLT0pevL8(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->disableAudioSystemSound()V

    return-void
.end method

.method private openBluetoothMic()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openBluetoothMic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "openBluetoothMic success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->requestAudioFocus()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->waitUntilBluetoothMicOpened()V

    goto :goto_0

    :cond_0
    const-string v0, "openBluetoothMic fail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method private openBluetoothProxy()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->closeBluetoothProxy()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "openBluetoothProxy : adapter is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "openBluetoothProxy : bluetooth is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "openBluetoothProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private removeBluetoothDevice()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_BLUETOOTH_MIX_MIC:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private reopenBluetoothMic()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isBluetoothMicAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->openBluetoothMic()V

    goto :goto_0

    :cond_1
    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "reopenBluetoothMic : Bluetooth mic is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method private setInternalMic(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMode(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(ZI)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setAudioFacing(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setAudioFacing(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    :cond_3
    return-void
.end method

.method private start()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->initializeSettingChangedListenerKey()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioManagerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateBluetoothDevice()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->semGetHighPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBluetoothDevice mBluetoothDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraAudioManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Landroid/bluetooth/BluetoothHeadset;->semGetHeadsetSetting(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->addBluetoothDevice()V

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-ne v1, v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x3

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->removeBluetoothDevice()V

    :goto_3
    return-void
.end method

.method private updatePreferredDevice(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferredDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "updatePreferredDevice return : input control not available"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isSetPreferredDeviceRequired(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getInternalMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method private waitUntilBluetoothMicClosed()V
    .locals 5

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "waitUntilBluetoothMicClosed : start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string p0, "waitUntilBluetoothMicClosed : end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private waitUntilBluetoothMicOpened()V
    .locals 5

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "waitUntilBluetoothMicOpened : start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mBluetoothMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "waitUntilBluetoothMicOpened : timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mIsBluetoothMicOpened:Z

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string p0, "waitUntilBluetoothMicOpened : end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public disableSystemSound()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->disableAlertSound(Landroid/content/Context;Z)V

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->disableVibrator(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getLastOrientation()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->switchAudioChannelDirection(Landroid/content/Context;I)V

    return-void
.end method

.method public enableMultiMicZoomFocus(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "zoomValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->enableZoomFocus(ZI)V

    return-void
.end method

.method public enableSystemSound()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->enableSystemSound(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->disableAlertSound(Landroid/content/Context;Z)V

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->disableVibrator(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->switchAudioChannelDirection(Landroid/content/Context;I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->checkForcedShutterSound()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isShutterSoundForced()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->initialize(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->initializeInputDeviceList()V

    return-void
.end method

.method public isInputLevelMonitorRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isMultiMicZoomFocusEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->isMultiMicZoomFocusEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCameraSettingChanged$0$CameraAudioManagerImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->changeInputType(I)V

    return-void
.end method

.method public synthetic lambda$startLevelMonitor$1$CameraAudioManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$stopLevelMonitor$2$CameraAudioManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->switchAudioChannelDirection(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result p2

    const-string v0, "CameraAudioManagerImpl"

    if-nez p2, :cond_0

    const-string p0, "onCameraSettingChanged : Returned because input level monitor is not running"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v0, :cond_7

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMicLevel(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "loop"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSound - soundId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->isPlaySoundAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "playSound : play sound is not available. Return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getSituation(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getVolume(Landroid/content/Context;I)F

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->play(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;FI)V

    return-void
.end method

.method public prepareMultiMicController(ILandroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "zoomValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->prepare(ILandroid/util/Range;I)V

    return-void
.end method

.method public releaseMultiMicZoomFocus()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->release()V

    return-void
.end method

.method public releaseSoundPool()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->release()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->abandonAudioFocus()V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public setAudioInputLevelUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->setInputLevelListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V

    return-void
.end method

.method public setExternalAudioInputDeviceInfoUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaRecorder"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method public setMultiMicZoomValue(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomRatio"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setZoomValue(F)V

    return-void
.end method

.method public startLevelMonitor()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "startLevelMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "startLevelMonitor return :  mLevelMonitorThread is running"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->registerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$twKgONsQBEVGQUqzzKhW3QnBzw4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$twKgONsQBEVGQUqzzKhW3QnBzw4;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->closeBluetoothProxy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public stopLevelMonitor()V
    .locals 2

    const-string v0, "CameraAudioManagerImpl"

    const-string v1, "stopLevelMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->releaseMultiMicZoomFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/audio/InputLevelMonitor;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->unregisterListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$NzaP4q-lqqmegMy-e_JgCjVbyhg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$NzaP4q-lqqmegMy-e_JgCjVbyhg;-><init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stopSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSound - soundId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->stop(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)V

    return-void
.end method
