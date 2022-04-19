.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;
.super Ljava/lang/Object;
.source "CenterButtonInfo.java"


# instance fields
.field private mCapturingResourceType:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

.field private mNormalOverlapResourceId:I

.field private mState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    return-void
.end method


# virtual methods
.method public getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mCapturingResourceType:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    return-object p0
.end method

.method public getNormalOverlapResourceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mNormalOverlapResourceId:I

    return p0
.end method

.method public getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    return-object p0
.end method

.method public setCapturingResourceType(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerButtonCapturingResourceType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mCapturingResourceType:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    return-void
.end method

.method public setNormalOverlapResourceId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mNormalOverlapResourceId:I

    return-void
.end method

.method public setState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerButtonState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->mState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    return-void
.end method
