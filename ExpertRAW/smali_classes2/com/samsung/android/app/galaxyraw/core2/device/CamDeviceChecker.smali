.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;
.super Ljava/lang/Object;
.source "CamDeviceChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "reference",
            "exceptionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "reference",
            "exceptionType",
            "exceptionMsg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "condition",
            "reference",
            "exceptionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method
