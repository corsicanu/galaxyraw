.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;
.super Ljava/lang/Object;
.source "ProPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfoEventManager"
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    return-void
.end method


# virtual methods
.method public onColorTemperatureChanged(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$700(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    div-int/lit8 p3, p3, 0x64

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestColorTemperature(Landroid/content/Context;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$800(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result p2

    if-eq p2, p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$902(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "A "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1002(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result p2

    const/4 p3, 0x4

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result p0

    invoke-interface {p1, p3, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(II)V

    :cond_0
    return-void
.end method

.method public onExposureTimeChanged(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    long-to-int p2, p3

    const/16 p3, 0x25

    const/4 p4, 0x1

    invoke-static {p2, p4, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestShutterSpeed(III)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1302(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "A "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1402(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result p2

    invoke-interface {p1, p4, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I

    move-result p0

    invoke-interface {p1, p4, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(II)V

    :cond_0
    return-void
.end method

.method public onExposureValueChanged(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(II)V

    :cond_0
    return-void
.end method

.method public onIsoChanged(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1700(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1802(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestIso(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$1902(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onSensorInfoChanged(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSensorInfoChanged(II)V

    :cond_0
    return-void
.end method
