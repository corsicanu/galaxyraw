.class public final synthetic Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->lambda$unregisterPreferenceChangeListener$6(Landroidx/preference/Preference;)V

    return-void
.end method
