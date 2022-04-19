.class Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;
.super Ljava/lang/Object;
.source "AttachModeManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/AttachModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestedMediaProfile"
.end annotation


# instance fields
.field private mAudioBitrate:I

.field private mAudioChannels:I

.field private mAudioEncoder:I

.field private mAudioSamplingRate:I

.field private mFileSizeIntervalInKb:I

.field private mOutputFormat:I

.field private mVideoBitrate:I

.field private mVideoEncoder:I

.field private mVideoFrameRate:I


# direct methods
.method constructor <init>(IIIIIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioBitrate",
            "audioChannels",
            "audioEncoder",
            "audioSamplingRate",
            "fileSizeInterval",
            "outputFormat",
            "videoBitrate",
            "videoEncoder",
            "videoFrameRate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioBitrate:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioChannels:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioEncoder:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioSamplingRate:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mFileSizeIntervalInKb:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mOutputFormat:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoBitrate:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoEncoder:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoFrameRate:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioBitrate:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioChannels:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioEncoder:I

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioSamplingRate:I

    div-int/lit16 p5, p5, 0x400

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mFileSizeIntervalInKb:I

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mOutputFormat:I

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoBitrate:I

    iput p8, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoEncoder:I

    iput p9, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoFrameRate:I

    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioBitrate:I

    return p0
.end method

.method public getAudioChannels()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioChannels:I

    return p0
.end method

.method public getAudioEncoder()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioEncoder:I

    return p0
.end method

.method public getAudioSamplingRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mAudioSamplingRate:I

    return p0
.end method

.method public getFileSizeInterval()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mFileSizeIntervalInKb:I

    return p0
.end method

.method public getOutputFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mOutputFormat:I

    return p0
.end method

.method public getVideoBitrate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoBitrate:I

    return p0
.end method

.method public getVideoEncoder()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoEncoder:I

    return p0
.end method

.method public getVideoFrameRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;->mVideoFrameRate:I

    return p0
.end method
