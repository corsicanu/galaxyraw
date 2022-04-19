.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;->f$2:Z

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->lambda$onDimChanged$2$QuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZLcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method
