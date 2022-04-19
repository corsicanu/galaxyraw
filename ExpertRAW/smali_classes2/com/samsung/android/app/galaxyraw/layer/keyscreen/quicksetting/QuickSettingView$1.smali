.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;
.super Ljava/util/EnumMap;
.source "QuickSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "keyType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->START:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->CENTER:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->CENTER:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->CENTER:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
