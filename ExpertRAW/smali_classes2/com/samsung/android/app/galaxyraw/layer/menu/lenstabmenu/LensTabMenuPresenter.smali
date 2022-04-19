.class public Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;
.super Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;
.source "LensTabMenuPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter<",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;"
    }
.end annotation


# static fields
.field private static final LENS_COMMAND_ID:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private static final TAG:Ljava/lang/String; = "LensTabMenuPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mTabCommandIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->LENS_COMMAND_ID:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "menuId"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->LENS_COMMAND_ID:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mTabCommandIdList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    return-void
.end method

.method private getTabCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mTabCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mTabCommandIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", prev="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LensTabMenuPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    const/4 p1, 0x0

    invoke-interface {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->refreshTab(IZ)V

    return-void
.end method

.method public onCollapseRequested()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;->collapseMenu()V

    return-void
.end method

.method public onInitialize()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->refreshLayout()V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSettingValue"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabSelected : tabSettingValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LensTabMenuPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->getTabCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->LENS_COMMAND_ID:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->getSelectedTabSettingValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->getTabCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTabSelected : there is a pending tab change from "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " to "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    invoke-interface {p0, v0, v4}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->refreshTab(IZ)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    invoke-interface {p0, v0, v4}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->refreshTab(IZ)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->LENS_COMMAND_ID:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->setTabInitPosition(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_LENS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->startMenuLaunchAnimation()V

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->LENS_COMMAND_ID:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_LENS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;->hideLensTab()V

    return-void
.end method
