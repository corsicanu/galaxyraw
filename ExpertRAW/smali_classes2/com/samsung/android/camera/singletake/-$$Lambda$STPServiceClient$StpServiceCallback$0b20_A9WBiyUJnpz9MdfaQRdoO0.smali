.class public final synthetic Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;

    invoke-direct {v0}, Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;->INSTANCE:Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->lambda$handleMessage$0(Landroid/os/Bundle;)V

    return-void
.end method
