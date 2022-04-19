.class public Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;
.super Ljava/lang/Object;
.source "AssistantMenuManager.java"


# static fields
.field private static final ACTION_GALLERY:Ljava/lang/String; = "android.intent.action.switchgallery"

.field private static final ACTION_SWITCH_CAMERA:Ljava/lang/String; = "android.intent.action.switchcamera"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field public static final GALLERY:I = 0x2

.field private static final ICON_NAME:Ljava/lang/String; = "IconName"

.field private static final MENU_GALLERY:Ljava/lang/String; = "Gallery"

.field private static final MENU_SWITCH_CAMERA:Ljava/lang/String; = "Switch camera"

.field private static final REGISTER:Ljava/lang/String; = "register"

.field public static final SWITCH_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AssistantMenuManager"

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mItemActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisterItem:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mItemActions:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static clear()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mItemActions:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->unregisterItem(ILandroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mItemActions:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->unregisterItem(ILandroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getRegisteredItemNames()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegisteredItemNames : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AssistantMenuManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unregisterItem(ILandroid/content/BroadcastReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "receiver"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterItem : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantMenuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "unregisterItem : There\'s no registered item."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->updateAssistantMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mItemActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->updateAssistantMenu(Z)V

    :cond_1
    return-void

    :catch_0
    const-string p0, "unregisterItem : IllegalArgumentException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAssistantMenu(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "register"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAssistantMenu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantMenuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->getRegisteredItemNames()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public registerItem(ILandroid/content/BroadcastReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "receiver"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerItem : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantMenuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "registerItem : There\'s registered item already."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->updateAssistantMenu(Z)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.switchgallery"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    const-string v3, "Gallery"

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.switchcamera"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mRegisterItem:Landroid/util/SparseArray;

    const-string v3, "Switch camera"

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mItemActions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->updateAssistantMenu(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
