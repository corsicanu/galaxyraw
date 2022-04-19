.class Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;
.super Ljava/lang/Object;
.source "CameraAudioManagerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "proxy"
        }
    .end annotation

    const-string p1, "CameraAudioManagerImpl"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$302(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    const-string p1, "CameraAudioManagerImpl"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$300(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;)V

    :cond_1
    return-void
.end method
