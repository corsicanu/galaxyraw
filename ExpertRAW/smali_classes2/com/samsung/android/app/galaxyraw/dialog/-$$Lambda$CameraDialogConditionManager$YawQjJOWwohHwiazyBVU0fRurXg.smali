.class public final synthetic Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$YawQjJOWwohHwiazyBVU0fRurXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$YawQjJOWwohHwiazyBVU0fRurXg;->f$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    return-void
.end method


# virtual methods
.method public final isEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$YawQjJOWwohHwiazyBVU0fRurXg;->f$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->lambda$makePropertyMap$0$CameraDialogConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p0

    return p0
.end method
