.class public Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;
.super Ljava/lang/Object;
.source "DiagmonApiManager.java"


# static fields
.field private static volatile sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;


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

.method public static getInstance()Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;-><init>()V

    sput-object v1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->sInstance:Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;

    return-object v0
.end method

.method private getUriParam(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "?policyVersion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getNeededPolicyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&currentPolicyVersion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getCurrentPolicyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&dmaVersion=ged&tmcc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->getTmcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&smcc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->getSmcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateRetryCount(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "event"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getRetryCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setRetryCount(I)V

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getRetryCount()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    goto :goto_0

    :cond_0
    const-string p0, "upload retry count over - delete LogFile"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->deleteFiles(Ljava/lang/String;)V

    const/16 p0, 0x12e

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    :goto_0
    return-void
.end method

.method private updateRetryCount(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "event",
            "code"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getRetryCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setRetryCount(I)V

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getRetryCount()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    goto :goto_1

    :cond_0
    const/16 p0, 0x190

    if-eq p3, p0, :cond_3

    const/16 p0, 0x191

    if-eq p3, p0, :cond_2

    const/16 p0, 0x1f4

    if-eq p3, p0, :cond_1

    const/16 p0, 0x131

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    :goto_0
    const-string p0, "upload retry count over - delete LogFile"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "/"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getLogPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->deleteFiles(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "event",
            "retryCountForToken"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeERObject(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getServiceId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "/v2/eventreport"

    const-string v3, "POST"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string p3, "succeed to connect to report event"

    invoke-static {p3}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/diagmonagent/log/ged/util/ParsingUtils;->parseEventReportResponse(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setEventId(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->getPreSignedURL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setS3Path(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setExpirationTime(J)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->uploadFile(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    const-string v0, "Retry event report"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getRetryCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setRetryCount(I)V

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getRetryCount()I

    move-result p0

    if-lt p0, v0, :cond_4

    const/16 p0, 0x12f

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x191

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    if-ne p3, v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p3

    const-string v1, "4403"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unauthorized error code : "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    const/16 p0, 0x192

    invoke-virtual {p2, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to connect to report event : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->updateRetryCount(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getPolicyVersionInfo(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getVersionCheckDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getVersionCheckUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v0, "succeed to connect to get policy version"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/ParsingUtils;->parsePolicyVersionResponse(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setPolicyVersionInfoUrl(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyVersionResponse;->getLatestDefault()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setNeededPolicyVersion(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to connect to get policy version : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p0, "Policy version response is null"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0
.end method

.method public refreshPolicy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceId",
            "retryCountForToken"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getNeededPolicyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Needed policy version is invalid"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v6, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    invoke-direct {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->getUriParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getDmaServiceId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "/v2/policy"

    const-string v4, "GET"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const-string p0, "succeed to connect to refresh policy"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/util/ParsingUtils;->parsePolicyResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->initPolicyPreference(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setCurrentPolicyVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getPollingInterval()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setPollingInterval(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getDefaultUploadFile()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDefaultUploadFile(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getDefaultMaxFileSize()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDefaultMaxFileSize(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getDefaultMaxFileCount()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDefaultMaxFileCount(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getUploadFileValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileValue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getUploadFileServiceVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileServiceVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getUploadFileErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileErrorCode(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getMaxFileSizeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeValue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getMaxFileSizeServiceVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeServiceVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getMaxFileSizeErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeErrorCode(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/PolicyResponse;->getMaxFileCountValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileCountValue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    const-string v0, "Retry refresh policy"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p3, v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshPolicy(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to connect to refresh policy : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public refreshToken(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;

    const-string v0, "/v2/common/authtoken"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/TokenClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "succeed to connect to get JWT"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/ParsingUtils;->parseTokenResponse(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/TokenResponse;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "token response is null"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/TokenResponse;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setJwtToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to connect to get JWT : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public resultReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Result;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "result",
            "retryCountForToken"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeRRObject(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Result;->getServiceId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "/v2/eventreport/result"

    const-string v3, "POST"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string p0, "succeed to connect to report result"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->delete(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    const-string v0, "Retry result report"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p3, v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Result;I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to connect to report result : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public resultReportAfterLogUpload(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "event",
            "retryCountForToken"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeRRObject(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getServiceId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "/v2/eventreport/result"

    const-string v3, "POST"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string p0, "succeed to connect to report result after log upload"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    const-string v0, "Retry result report after log upload"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p3, v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReportAfterLogUpload(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->makeResult(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Lcom/sec/android/diagmonagent/log/ged/db/model/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Result;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to connect to report result after log upload: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public serviceRegister(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceInfo",
            "retryCountForToken"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeSRObject(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->getDmaServiceId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "/v2/common/serviceregistration"

    const-string v3, "POST"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v2, :cond_3

    const-string p0, "succeed to connect to register service"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sec/android/diagmonagent/log/ged/util/ParsingUtils;->parseServiceRegistrationResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getServiceDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->getStatusCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Y"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->updateDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->updateStatus(I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1100"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->updateStatus(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1101"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v4}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->updateStatus(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ErrorCode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ErrorMessage = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/ServiceRegistrationResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->isTokenNeedToBeUpdated(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->refreshToken(Landroid/content/Context;)V

    const-string v0, "Retry service registration"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    if-ge p3, v4, :cond_5

    add-int/2addr p3, v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->serviceRegister(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;I)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to connect to register service : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public uploadFile(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "event"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/FileUploadClient;

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getS3Path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/FileUploadClient;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/FileUploadClient;->execute(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    const-string v0, "succeed to connect to upload file"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p2, v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStatus(I)V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->resultReportAfterLogUpload(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;I)V

    goto :goto_0

    :cond_0
    const-string v0, "Failed to connect to upload file"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/controller/DiagmonApiManager;->updateRetryCount(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V

    :goto_0
    return-void
.end method
