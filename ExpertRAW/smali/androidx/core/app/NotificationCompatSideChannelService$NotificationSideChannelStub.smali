.class Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroidx/core/app/INotificationSideChannel$Stub;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompatSideChannelService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-direct {p0}, Landroidx/core/app/INotificationSideChannel$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "id",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "id",
            "tag",
            "notification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    throw p0
.end method
