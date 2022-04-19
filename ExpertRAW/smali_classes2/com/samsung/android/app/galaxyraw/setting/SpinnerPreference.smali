.class public Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;
.super Landroidx/preference/ListPreference;
.source "SpinnerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpinnerPreference"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEventId:Ljava/lang/String;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mKey:Ljava/lang/String;

.field private mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mSubEventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const v0, 0x7f040144

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference$1;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d00d5

    invoke-direct {p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->updateEntries()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSubEventId:Ljava/lang/String;

    return-object p0
.end method

.method private findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private updateEntries()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSoundEffectsEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setTextDirection(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setVisibility(I)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpinnerPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mEventId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setSoundEffectsEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->updateEntries()V

    return-void
.end method

.method setEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mEventId:Ljava/lang/String;

    return-void
.end method

.method setSubEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subEventId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->mSubEventId:Ljava/lang/String;

    return-void
.end method

.method setValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue : value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpinnerPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setValueIndex(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
