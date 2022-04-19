.class Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoBitrate"
.end annotation


# instance fields
.field private mAVCBitrate:I

.field private mHDR10Bitrate:I

.field private mHEVCBitrate:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitrateAVC",
            "bitrateHEVC",
            "bitrateHDR10"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;->mAVCBitrate:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;->mHEVCBitrate:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;->mHDR10Bitrate:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(III)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;->mHDR10Bitrate:I

    return p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;->mHEVCBitrate:I

    return p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;->mAVCBitrate:I

    return p0
.end method
