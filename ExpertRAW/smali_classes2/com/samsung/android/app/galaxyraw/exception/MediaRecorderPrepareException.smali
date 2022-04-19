.class public Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;
.super Ljava/lang/RuntimeException;
.source "MediaRecorderPrepareException.java"


# static fields
.field public static final MEDIA_RECORDER_FAIL:I = 0x2

.field public static final NOT_ENOUGH_FILE_SIZE:I = 0x1

.field public static final SET_AUDIO_SOURCE_FAIL:I = 0x3


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "cause"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;->mReason:I

    return-void
.end method

.method private static getDefaultMessage(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Fail to prepare media recorder."

    return-object p0

    :cond_1
    const-string p0, "Not enough file size to prepare media recorder."

    return-object p0
.end method


# virtual methods
.method public final getReason()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;->mReason:I

    return p0
.end method
