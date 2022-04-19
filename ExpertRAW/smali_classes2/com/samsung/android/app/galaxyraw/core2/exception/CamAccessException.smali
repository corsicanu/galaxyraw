.class public Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
.super Landroid/util/AndroidException;
.source "CamAccessException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException$AccessError;
    }
.end annotation


# static fields
.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final CAMERA_PERMISSION_DENIED:I = 0x15

.field public static final MAX_CAMERAS_IN_USE:I = 0x5


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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "problem",
            "message"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "problem",
            "message",
            "cause"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getCombinedMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

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
            "problem",
            "cause"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getCombinedMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraAccessException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/SecurityException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x15

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

    return-void
.end method

.method private static getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "problem",
            "message"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getProblemString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "%s (%d): %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCombinedMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%s, cause: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "The camera is disabled for this user, and cannot be opened."

    return-object p0

    :cond_1
    const-string p0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object p0

    :cond_2
    const-string p0, "The camera device is in use already"

    return-object p0

    :cond_3
    const-string p0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object p0

    :cond_4
    const-string p0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object p0

    :cond_5
    const-string p0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object p0
.end method

.method private static getProblemString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "problem"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const-string p0, "<UNKNOWN_ERROR>"

    return-object p0

    :cond_0
    const-string p0, "CAMERA_PERMISSION_DENIED"

    return-object p0

    :cond_1
    const-string p0, "MAX_CAMERAS_IN_USE"

    return-object p0

    :cond_2
    const-string p0, "CAMERA_IN_USE"

    return-object p0

    :cond_3
    const-string p0, "CAMERA_ERROR"

    return-object p0

    :cond_4
    const-string p0, "CAMERA_DISCONNECTED"

    return-object p0

    :cond_5
    const-string p0, "CAMERA_DISABLED"

    return-object p0
.end method


# virtual methods
.method public final getReason()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->mReason:I

    return p0
.end method
