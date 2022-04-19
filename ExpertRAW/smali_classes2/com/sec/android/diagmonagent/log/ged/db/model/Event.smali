.class public Lcom/sec/android/diagmonagent/log/ged/db/model/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final UNDEFINED_ID:I = -0x1


# instance fields
.field private description:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private expirationTime:J

.field private extension:Ljava/lang/String;

.field private id:I

.field private logPath:Ljava/lang/String;

.field private memory:Ljava/lang/String;

.field private networkMode:Z

.field private relayClientType:Ljava/lang/String;

.field private relayClientVersion:Ljava/lang/String;

.field private retryCount:I

.field private s3Path:Ljava/lang/String;

.field private sdkType:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private serviceAgreeType:Ljava/lang/String;

.field private serviceDefinedKey:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;

.field private serviceVersion:Ljava/lang/String;

.field private status:I

.field private storage:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->memory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->storage:Ljava/lang/String;

    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->id:I

    return p0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMemory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->memory:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClientType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClientVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    return p0
.end method

.method public getS3Path()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceAgreeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceDefinedKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    return p0
.end method

.method public getStorage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->storage:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    return-wide v0
.end method

.method public isNetworkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->description:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expirationTime"
        }
    .end annotation

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->expirationTime:J

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->extension:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->id:I

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logPath"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->logPath:Ljava/lang/String;

    return-void
.end method

.method public setMemory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memory"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->memory:Ljava/lang/String;

    return-void
.end method

.method public setNetworkMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->networkMode:Z

    return-void
.end method

.method public setRelayClientType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relayClientType"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientType:Ljava/lang/String;

    return-void
.end method

.method public setRelayClientVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relayClientVersion"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->relayClientVersion:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryCount"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->retryCount:I

    return-void
.end method

.method public setS3Path(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s3Path"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->s3Path:Ljava/lang/String;

    return-void
.end method

.method public setSdkType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkType"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkType:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkVersion"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setServiceAgreeType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceAgreeType"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceAgreeType:Ljava/lang/String;

    return-void
.end method

.method public setServiceDefinedKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceDefinedKey"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceDefinedKey:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceId"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceVersion"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->serviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->status:I

    return-void
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storage"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->storage:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/Event;->timestamp:J

    return-void
.end method
