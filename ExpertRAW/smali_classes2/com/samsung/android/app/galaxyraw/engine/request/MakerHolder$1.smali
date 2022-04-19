.class Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;
.super Ljava/lang/Object;
.source "MakerHolder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCamDeviceConnectFailed(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCamDeviceConnectFailed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MakerHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$000(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;->onConnectFailed()V

    return-void
.end method

.method public onCamDeviceConnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCamDeviceConnected : cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$100(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$208(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$200(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$300(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCamDeviceConnected : There are still connecting devices to maker, the number of connected devices : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$200(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$202(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$500(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$300(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$402(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$000(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;->onConnected()V

    return-void
.end method

.method public onCamDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCamDeviceDisconnected : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MakerHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$000(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;->onDisconnected()V

    return-void
.end method

.method public onCamDeviceReady(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCamDeviceReady : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MakerHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->access$000(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;->onCamDeviceReady()V

    return-void
.end method
