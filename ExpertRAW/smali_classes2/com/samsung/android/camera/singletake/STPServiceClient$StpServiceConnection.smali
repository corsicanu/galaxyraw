.class Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;
.super Ljava/lang/Object;
.source "STPServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/singletake/STPServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StpServiceConnection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/singletake/STPServiceClient$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onBindingDied()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$200()Lcom/samsung/android/camera/singletake/STPServiceClient;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$400(Lcom/samsung/android/camera/singletake/STPServiceClient;Z)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceConnected()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$200()Lcom/samsung/android/camera/singletake/STPServiceClient;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$300(Lcom/samsung/android/camera/singletake/STPServiceClient;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceDisconnected()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$200()Lcom/samsung/android/camera/singletake/STPServiceClient;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$400(Lcom/samsung/android/camera/singletake/STPServiceClient;Z)V

    return-void
.end method
