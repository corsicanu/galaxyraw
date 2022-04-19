.class public Lcom/sec/android/diagmonagent/log/ged/db/DataController;
.super Ljava/lang/Object;
.source "DataController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventReport(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "eventObj",
            "zipPath"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getServiceDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "setConfiguration should be called first"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->validValues(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->makeEvent(Landroid/os/Bundle;)Lcom/sec/android/diagmonagent/log/ged/db/model/Event;

    move-result-object p1

    const-string v2, "S"

    invoke-virtual {p1, v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setServiceAgreeType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "service id is different"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setDeviceId(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getMemory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->getStorage()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->zipWithMetaFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p1, p2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setLogPath(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/ValidationUtils;->isValidWithPolicy(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->deleteFiles(Ljava/lang/String;)V

    return v0

    :cond_6
    const-string p2, "insert event"

    invoke-static {p2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to send event report "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getServiceDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "S"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceAgreeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "You can\'t use getDeviceId"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get device id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    return-object v0
.end method

.method private static isAvailableService(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not available service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static makeEvent(Landroid/os/Bundle;)Lcom/sec/android/diagmonagent/log/ged/db/model/Event;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "erObj"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;-><init>()V

    const-string v1, "serviceId"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setServiceId(Ljava/lang/String;)V

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setDeviceId(Ljava/lang/String;)V

    const-string v1, "serviceVersion"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setServiceVersion(Ljava/lang/String;)V

    const-string v1, "serviceAgreeType"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setServiceAgreeType(Ljava/lang/String;)V

    const-string v1, "sdkVersion"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setSdkVersion(Ljava/lang/String;)V

    const-string v1, "sdkType"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setSdkType(Ljava/lang/String;)V

    const-string v1, "serviceDefinedKey"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setServiceDefinedKey(Ljava/lang/String;)V

    const-string v1, "errorCode"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setErrorCode(Ljava/lang/String;)V

    const-string v1, "errorDesc"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setDescription(Ljava/lang/String;)V

    const-string v1, "relayClientVersion"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setRelayClientVersion(Ljava/lang/String;)V

    const-string v1, "relayClientType"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setRelayClientType(Ljava/lang/String;)V

    const-string v1, "extension"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setExtension(Ljava/lang/String;)V

    const-string v1, "wifiOnly"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setNetworkMode(Z)V

    const-string v1, "memory"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setMemory(Ljava/lang/String;)V

    const-string v1, "storage"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setStorage(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->setTimestamp(J)V

    return-object v0
.end method

.method private static makeServiceInfo(Landroid/os/Bundle;)Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srObj"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;-><init>()V

    const-string v1, "serviceId"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceId(Ljava/lang/String;)V

    const-string v1, "trackingId"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setTrackingId(Ljava/lang/String;)V

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDeviceId(Ljava/lang/String;)V

    const-string v1, "serviceVersion"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceVersion(Ljava/lang/String;)V

    const-string v1, "serviceAgreeType"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceAgreeType(Ljava/lang/String;)V

    const-string v1, "sdkVersion"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setSdkVersion(Ljava/lang/String;)V

    const-string v1, "sdkType"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setSdkType(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setTimestamp(J)V

    return-object v0
.end method

.method private static needToUpdateService(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldServiceInfo",
            "newServiceInfo"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method

.method public static sendSRObj(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "srObj"
        }
    .end annotation

    const-string v0, "different from registered service id"

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->validValues(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getServiceDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->makeServiceInfo(Landroid/os/Bundle;)Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    move-result-object p1

    const-string v3, "S"

    invoke-virtual {p1, v3}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceAgreeType(Ljava/lang/String;)V

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->generateRandomDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "device id must not be empty"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "register new service"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDeviceId(Ljava/lang/String;)V

    :cond_5
    invoke-static {v2, p1}, Lcom/sec/android/diagmonagent/log/ged/db/DataController;->needToUpdateService(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->update(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)V

    const-string p1, "update service"

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "service doesn\'t need to update"

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDScheduler;->isGEDJobServiceRegistered(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Register GED job service"

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDScheduler;->registerJob(Landroid/content/Context;)Z

    goto :goto_1

    :cond_7
    const-string p0, "GED job service is already registered"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to set configuration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static showAllDatabase(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getServiceDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->printAllServiceInfo()V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getEventDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/EventDao;->printAllEvent()V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->get(Landroid/content/Context;)Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/GEDDatabase;->getResultDao()Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ResultDao;->printAllResult()V

    return-void
.end method

.method private static validValues(Landroid/os/Bundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const-string v0, "serviceAgreeType"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid service agree type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v4

    :cond_0
    const-string v0, "sdkType"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sdk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v4

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
