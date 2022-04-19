.class public final synthetic Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$KmrqBW2pJWxfGq4JObgYxEWHo_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$KmrqBW2pJWxfGq4JObgYxEWHo_c;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$KmrqBW2pJWxfGq4JObgYxEWHo_c;->f$0:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->lambda$requestHighAccuracyLocationMode$0(Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
