.class Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDlcService.java"

# interfaces
.implements Lcom/sec/spp/push/dlc/api/IDlcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/spp/push/dlc/api/IDlcService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sec/spp/push/dlc/api/IDlcService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.spp.push.dlc.api.IDlcService"

    return-object p0
.end method

.method public requestSend(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "svcCode",
            "timeStamp",
            "activity",
            "deviceId",
            "userId",
            "appVersion",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.spp.push.dlc.api.IDlcService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v3, p0

    iget-object v3, v3, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v4, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v3

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSend(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestSendAggregation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJJ)I
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "svcCode",
            "timeStamp",
            "activity",
            "deviceId",
            "userId",
            "appVersion",
            "body",
            "index",
            "sum1",
            "sum2",
            "sum3",
            "sum4",
            "sum5"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.spp.push.dlc.api.IDlcService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v13, p10

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v14, p11

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p13

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v14, p15

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v14, p17

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v14, p19

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    invoke-interface/range {v3 .. v23}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSendAggregation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestSendSummary(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJ)I
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "svcCode",
            "timeStamp",
            "activity",
            "deviceId",
            "userId",
            "appVersion",
            "body",
            "index",
            "sum1",
            "sum2",
            "sum3",
            "sum4",
            "sum5"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.spp.push.dlc.api.IDlcService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v14, p11

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p13

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v14, p15

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v14, p17

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v14, p19

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    invoke-interface/range {v3 .. v23}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSendSummary(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestSendUrgent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "svcCode",
            "timeStamp",
            "activity",
            "deviceId",
            "userId",
            "appVersion",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.spp.push.dlc.api.IDlcService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v3, p0

    iget-object v3, v3, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v13, 0x0

    invoke-interface {v3, v4, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/spp/push/dlc/api/IDlcService$Stub;->getDefaultImpl()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v3

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSendUrgent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
