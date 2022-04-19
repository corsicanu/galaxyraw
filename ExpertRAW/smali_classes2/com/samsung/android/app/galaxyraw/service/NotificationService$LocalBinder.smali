.class public Lcom/samsung/android/app/galaxyraw/service/NotificationService$LocalBinder;
.super Landroid/os/Binder;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/service/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/service/NotificationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/service/NotificationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/NotificationService$LocalBinder;->this$0:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/app/galaxyraw/service/NotificationService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/NotificationService$LocalBinder;->this$0:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    return-object p0
.end method
