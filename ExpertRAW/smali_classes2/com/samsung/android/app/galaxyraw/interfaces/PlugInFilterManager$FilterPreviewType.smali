.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;
.super Ljava/lang/Enum;
.source "PlugInFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterPreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

.field public static final enum FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

.field public static final enum MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

.field public static final enum NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    const-string v3, "FILTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    const-string v5, "MY_FILTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    return-object v0
.end method
