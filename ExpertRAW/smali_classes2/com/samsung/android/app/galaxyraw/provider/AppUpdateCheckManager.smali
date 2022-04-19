.class public Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;
.super Ljava/lang/Object;
.source "AppUpdateCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;,
        Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$StateListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_VALUE:I = 0x7530

.field private static final CORE_POOL_SIZE:I

.field private static final KEEP_ALIVE_UI_SECONDS:J = 0x1eL

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final NUMBER_OF_CORES:I

.field public static final RESULT_CODE_DEFAULT:I = -0x2

.field public static final RESULT_CODE_DOWNLOAD_AVAILABLE:I = 0x1

.field public static final RESULT_CODE_NOT_AVAILABLE:I = 0x0

.field public static final RESULT_CODE_NOT_NECESSARY_TO_UPDATE:I = 0x1

.field public static final RESULT_CODE_NO_NETWORK:I = 0x3

.field public static final RESULT_CODE_PARAMETER_ERROR:I = 0x3e8

.field public static final RESULT_CODE_SERVICE_ERROR:I = 0x7d0

.field public static final RESULT_CODE_UPDATE_AVAILABLE:I = 0x2

.field public static final RESULT_CODE_UPDATE_CHECK_REQUESTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GalaxyRaw/AppUpdateCheckManager"

.field private static final TYPE_DOWNLOAD:I = 0x2

.field private static final TYPE_UPDATE:I = 0x1

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageName:Ljava/lang/String;

.field private mStubBundle:Landroid/os/Bundle;

.field private mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->NUMBER_OF_CORES:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->CORE_POOL_SIZE:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mStubBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->startUpdateCheckTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->getUpdateCheckResult(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mStubBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getUpdateCheckResult(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateCheckResult : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/AppUpdateCheckManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/AppsStubUtil;->getUpdateCheckUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/AppsStubUtil;->getDownloadUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateCheckResult : Request url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->parsingCheckResult(Ljava/net/URL;I)I

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUpdateCheckResult : result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUpdateCheckResult : Incorrect parameter, so return - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e8

    return p0
.end method

.method private isSamsungAppsCountryCodeValid()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const-string v2, "samsung_account_cc_value"

    const-string v3, "NONE"

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const-string v0, "samsung_account_cc_time"

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/32 v2, 0x7b98a00

    cmp-long p0, v5, v2

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v4

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private parsingCheckResult(Ljava/net/URL;I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsingCheckResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/AppUpdateCheckManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/16 v3, 0x7530

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    const-string v3, "parsingCheckResult : connected url"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/util/AppsStubUtil;->TAG_LIST:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsingCheckResult : [Result] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_2
    if-ne p2, v5, :cond_3

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mStubBundle:Landroid/os/Bundle;

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mStubBundle:Landroid/os/Bundle;

    const-string p2, "resultCode"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parsingCheckResult : InputStream parsing error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return v0
.end method

.method private startUpdateCheckTask()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    :cond_1
    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;-><init>(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public checkTimeForAppUpdate(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    const-string p0, "key_recent_app_update_check_time"

    invoke-static {p1, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTimeForAppUpdate : recent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", diff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v1, p0

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalaxyRaw/AppUpdateCheckManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p0, 0x7b98a00

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public start()V
    .locals 4

    const-string v0, "GalaxyRaw/AppUpdateCheckManager"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "camera.action.ACTION_UPDATE_SAMSUNG_ACCOUNT_CC_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->isSamsungAppsCountryCodeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->startUpdateCheckTask()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    const-string v0, "GalaxyRaw/AppUpdateCheckManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mUpdateCheckTask:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
