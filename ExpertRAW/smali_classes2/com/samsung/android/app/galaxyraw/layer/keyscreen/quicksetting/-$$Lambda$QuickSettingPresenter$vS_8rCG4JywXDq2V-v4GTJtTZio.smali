.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;->f$2:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;->f$2:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->lambda$onCameraSettingChanged$1$QuickSettingPresenter(ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method
