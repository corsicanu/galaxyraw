.class public Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "CameraSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;,
        Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;,
        Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;
    }
.end annotation


# static fields
.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "msg"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "CameraSettingDialog"

.field private static final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDialogFragmentLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mDialogFragmentLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->dismissCameraSettingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->setLocationTagDialogEnabled(Z)V

    return-void
.end method

.method private dismissCameraSettingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->dismissAllowingStateLoss()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p0

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p0

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static registerCameraSettingDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setLocationTagDialogEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location_tag_first_launch_camera_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationTagDialogEnabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraSettingDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unregisterCameraSettingDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$CameraSettingDialog(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onCancelDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$SettingDialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->setLocationTagDialogEnabled(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->dismissCameraSettingDialog()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setDialogId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraSettingDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    invoke-interface {v6, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onCreateDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$SettingDialogId:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/16 v5, 0x8

    const v6, 0x7f0a01b2

    const v7, 0x7f120305

    const v8, 0x7f0a019d

    const v9, 0x7f120156

    const v10, 0x7f120155

    const v11, 0x7f120328

    const/high16 v13, 0x1040000

    const v14, 0x7f12010a

    const/4 v15, 0x0

    const v12, 0x7f120371

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const v1, 0x7f1204c8

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1203fc

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v13, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {v2, v14}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v2, v15}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {v2, v14}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v15}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_3
    const v1, 0x7f0d006f

    invoke-virtual {v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a01ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_REPLACE_WIFI_STRING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Wi-Fi"

    const-string v9, "WLAN"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120307

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v13, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_4
    const v1, 0x7f0d003d

    invoke-virtual {v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_REPLACE_WIFI_STRING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Wi-Fi"

    const-string v9, "WLAN"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120307

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1204bc

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12036f

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_5
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    const/4 v3, 0x1

    const v5, 0x7f1203eb

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1203ec

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120241

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120121

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_3
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1203ea

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v13, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :pswitch_6
    invoke-virtual {v2, v14}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120329

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_6
    const v3, 0x7f120329

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_4
    invoke-virtual {v2, v15}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v13, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :pswitch_7
    invoke-virtual {v2, v14}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120329

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v15}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V

    invoke-virtual {v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_5
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$CustomDialog;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$mAk_srn13Y-CiVQsdNuf_CLXUdE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingDialog$mAk_srn13Y-CiVQsdNuf_CLXUdE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;->onDismissDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "CameraSettingDialog"

    const-string p1, "onDismiss : return because getActivity() is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$SettingDialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->setLocationTagDialogEnabled(Z)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
