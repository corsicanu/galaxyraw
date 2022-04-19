.class public final Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
.super Ljava/lang/Object;
.source "CamDeviceRequestCnt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mArCoreRequestCnt:I

.field private mFirstRecordRequestCnt:I

.field private mMainPreviewCbRequestCnt:I

.field private mMainPreviewRequestCnt:I

.field private mPreviewDepthRequestCnt:I

.field private mPreviewExtraRequestCnt:I

.field private mSecondRecordRequestCnt:I

.field private mSubPreviewCbRequestCnt:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mFirstRecordRequestCnt:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mSecondRecordRequestCnt:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mMainPreviewCbRequestCnt:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mSubPreviewCbRequestCnt:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mMainPreviewRequestCnt:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mPreviewDepthRequestCnt:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mArCoreRequestCnt:I

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mPreviewExtraRequestCnt:I

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$1;)V

    return-object v0
.end method

.method public setArCoreRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arCoreRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mArCoreRequestCnt:I

    return-object p0
.end method

.method public setFirstRecordRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstRecordRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mFirstRecordRequestCnt:I

    return-object p0
.end method

.method public setMainPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewCbRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mMainPreviewCbRequestCnt:I

    return-object p0
.end method

.method public setMainPreviewRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mMainPreviewRequestCnt:I

    return-object p0
.end method

.method public setPreviewDepthRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewDepthRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mPreviewDepthRequestCnt:I

    return-object p0
.end method

.method public setPreviewExtraRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewExtraRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mPreviewExtraRequestCnt:I

    return-object p0
.end method

.method public setSecondRecordRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondRecordRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mSecondRecordRequestCnt:I

    return-object p0
.end method

.method public setSubPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subPreviewCbRequestCnt"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->mSubPreviewCbRequestCnt:I

    return-object p0
.end method
