.class Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;
.super Landroid/media/AudioDeviceCallback;
.source "CameraAudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addedDevices"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->hasAudioInputDevice([Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    :cond_1
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removedDevices"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->hasAudioInputDevice([Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    :cond_1
    return-void
.end method
