.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;->f$1:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;->f$2:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->lambda$onEvCompensationValueChanged$1$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method
