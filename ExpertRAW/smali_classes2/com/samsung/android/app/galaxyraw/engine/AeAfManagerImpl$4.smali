.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDofMultiInfoChanged$0$AeAfManagerImpl$4([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$2000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$2000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;->onMultiAfChanged([B)V

    :cond_0
    return-void
.end method

.method public onDofMultiInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "dofMultiInfo",
            "camDevice"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiInfo()[I

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiData()[I

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1900(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiInfo()[I

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiData()[I

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p1, v0

    aget p1, p1, p3

    mul-int/2addr v1, p1

    new-array p1, v1, [B

    const/4 p3, 0x3

    :goto_0
    mul-int/lit8 v2, v1, 0x4

    if-ge p3, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget v3, p2, p3

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, 0x4

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;[B)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method
