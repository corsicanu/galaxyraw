.class public Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AboutCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;
    }
.end annotation


# static fields
.field private static final CALLER_TYPE:Ljava/lang/String; = "CallerType"

.field private static final DIRECT_CALL:Ljava/lang/String; = "directcall"

.field private static final GUID:Ljava/lang/String; = "GUID"

.field private static final KEY_CHECKING_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "AboutCameraActivity"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;)Landroid/net/ConnectivityManager;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->isNetworkConnectionAgreedInInformationSecurityDialog(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private hideStatusBarForLandscape(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private isNetworkConnectionAgreedInInformationSecurityDialog(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "pref_network_connection_allowed_in_china_information_security_dialog"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isNetworkConnectionAgreedInInformationSecurityDialog = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AboutCameraActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$AboutCameraActivity(Landroid/view/View;)V
    .locals 1

    const-string p1, "5217"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$1200(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->hideStatusBarForLandscape(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    const p0, 0x7f0a0121

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d00d6

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->setContentView(I)V

    const p1, 0x7f0a0069

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a00bf

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v2, 0x7f0a02fc

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    new-instance v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0006

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06002f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a0121

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mAboutCameraFragment:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const p1, 0x7f0a0016

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f12019c

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$BbXik3y5EGU6cA8emRUYPnM62BM;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$BbXik3y5EGU6cA8emRUYPnM62BM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "510"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method
