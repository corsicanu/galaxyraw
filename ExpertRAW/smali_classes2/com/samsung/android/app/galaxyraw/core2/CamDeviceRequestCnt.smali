.class public Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;
.super Ljava/lang/Object;
.source "CamDeviceRequestCnt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    }
.end annotation


# instance fields
.field private final mArCoreRequestCnt:I

.field private final mFirstRecordRequestCnt:I

.field private final mMainPreviewCbRequestCnt:I

.field private final mMainPreviewRequestCnt:I

.field private final mPreviewDepthRequestCnt:I

.field private final mPreviewExtraRequestCnt:I

.field private final mSecondRecordRequestCnt:I

.field private final mSubPreviewCbRequestCnt:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$000(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mFirstRecordRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$100(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mSecondRecordRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mMainPreviewCbRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$300(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mSubPreviewCbRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$400(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mMainPreviewRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$500(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mPreviewDepthRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$600(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mArCoreRequestCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->access$700(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mPreviewExtraRequestCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)V

    return-void
.end method

.method public static create()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getArCoreRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mArCoreRequestCnt:I

    return p0
.end method

.method public getFirstRecordRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mFirstRecordRequestCnt:I

    return p0
.end method

.method public getMainPreviewCbRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mMainPreviewCbRequestCnt:I

    return p0
.end method

.method public getMainPreviewRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mMainPreviewRequestCnt:I

    return p0
.end method

.method public getPreviewDepthRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mPreviewDepthRequestCnt:I

    return p0
.end method

.method public getPreviewExtraRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mPreviewExtraRequestCnt:I

    return p0
.end method

.method public getSecondRecordRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mSecondRecordRequestCnt:I

    return p0
.end method

.method public getSubPreviewCbRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->mSubPreviewCbRequestCnt:I

    return p0
.end method
