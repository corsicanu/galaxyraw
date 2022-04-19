.class Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$4;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$600(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$500(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method
