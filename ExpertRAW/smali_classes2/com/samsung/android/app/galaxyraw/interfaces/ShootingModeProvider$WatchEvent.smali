.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;
.super Ljava/lang/Enum;
.source "ShootingModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WatchEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

.field public static final enum CANCEL_SHOOTING:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    const-string v1, "CANCEL_SHOOTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;->CANCEL_SHOOTING:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    return-object v0
.end method
