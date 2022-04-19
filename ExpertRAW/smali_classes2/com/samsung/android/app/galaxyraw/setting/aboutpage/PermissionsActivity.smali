.class public Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PermissionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->getWindow()Landroid/view/Window;

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
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d000d

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->setContentView(I)V

    const p1, 0x7f0a02fc

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0600d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_KOREA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f0a01ec

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a029d

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a006c

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
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
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method
