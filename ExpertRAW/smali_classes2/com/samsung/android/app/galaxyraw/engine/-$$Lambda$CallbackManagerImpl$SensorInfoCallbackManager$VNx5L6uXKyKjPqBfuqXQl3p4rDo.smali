.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;->f$2:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;->f$1:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;->f$2:Ljava/lang/Long;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->lambda$onExposureTimeChanged$2$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
