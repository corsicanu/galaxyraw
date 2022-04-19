.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;
.super Ljava/lang/Object;
.source "ProPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfLensInfoEventManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    return-void
.end method


# virtual methods
.method public onAfLensPositionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$302(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result p0

    invoke-interface {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(II)V

    return-void
.end method
