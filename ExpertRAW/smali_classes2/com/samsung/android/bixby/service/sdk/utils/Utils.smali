.class public final Lcom/samsung/android/bixby/service/sdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/bixby/service/sdk/exception/ThrowRuntimeException;

    const-string v1, "shoud use worker thread"

    invoke-direct {v0, v1}, Lcom/samsung/android/bixby/service/sdk/exception/ThrowRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkVersion(II)Z
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getImageServiceVersion(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.samsung.android.bixby.service.image"

    invoke-static {p0, v0}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->getVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSuggestionServiceVersion(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.samsung.android.bixby.service.suggestion"

    invoke-static {p0, v0}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->getVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTextServiceVersion(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.samsung.android.bixby.service.text"

    invoke-static {p0, v0}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->getVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Utils"

    const v2, 0x7fffffff

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "context is null"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.samsung.android.bixby.service"

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "Package NameNotFoundException"

    invoke-static {v1, p0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v2
.end method
