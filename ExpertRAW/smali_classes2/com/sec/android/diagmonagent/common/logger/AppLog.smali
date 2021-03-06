.class public Lcom/sec/android/diagmonagent/common/logger/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# static fields
.field public static SERVICE_ID_TAG:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "DIAGMON_SDK"

.field private static mContext:Landroid/content/Context; = null

.field private static mServiceId:Ljava/lang/String; = ""

.field private static sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    sget-object v1, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/diagmonagent/common/logger/IAppLogData;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string v0, "DIAGMON_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    sget-object v1, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/diagmonagent/common/logger/IAppLogData;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string v0, "DIAGMON_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    sget-object v1, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/diagmonagent/common/logger/IAppLogData;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string v0, "DIAGMON_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static initLogger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceId"
        }
    .end annotation

    :try_start_0
    sput-object p0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    sget-object p0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLogData;-><init>()V

    sput-object p0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    sget-object p0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    sput-object p0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DIAGMON_SDK"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    sget-object v1, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/diagmonagent/common/logger/IAppLogData;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string v0, "DIAGMON_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->mServiceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/logger/AppLog;->sInstance:Lcom/sec/android/diagmonagent/common/logger/IAppLogData;

    sget-object v1, Lcom/sec/android/diagmonagent/common/logger/AppLog;->SERVICE_ID_TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/diagmonagent/common/logger/IAppLogData;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string v0, "DIAGMON_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
