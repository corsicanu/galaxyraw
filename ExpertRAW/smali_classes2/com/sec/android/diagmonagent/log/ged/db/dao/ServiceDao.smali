.class public Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;
.super Ljava/lang/Object;
.source "ServiceDao.java"


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "DIAGMON_SERVICE"


# instance fields
.field public final MAX_KEEP_TIME:J

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->MAX_KEEP_TIME:J

    const-string v0, "DIAGMON_SERVICE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public deleteServiceByTime(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v4, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "status"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    sget-object p1, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string p2, "delete service by time"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public deleteServiceInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public existUnregisteredService()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "serviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v0, "service is not exist"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "status"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "serviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v0, "service is not exist"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "trackingId"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setTrackingId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "deviceId"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDeviceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "serviceVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "serviceAgreeType"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceAgreeType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sdkVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setSdkVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sdkType"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setSdkType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "documentId"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDocumentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "status"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setStatus(I)V

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v0, "timestamp"

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setTimestamp(J)V

    return-object v1
.end method

.method public insert(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceInfo"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackingId"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serviceVersion"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getServiceAgreeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serviceAgreeType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkVersion"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getSdkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "documentId"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getStatus()I

    move-result v0

    const-string v1, "status"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->getTimestamp()J

    move-result-wide v0

    const-string p1, "timestamp"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public printAllServiceInfo()V
    .locals 5

    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string v1, "=================ServiceInfo================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "serviceId"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "trackingId"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "deviceId"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", documentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "documentId"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "serviceVersion"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceAgreeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "serviceAgreeType"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sdkVersion"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sdkType"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "status"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "timestamp"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public update(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceInfo"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->insert(Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;)V

    return-void
.end method

.method public updateDocumentId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "documentId"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "documentId"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "status"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
