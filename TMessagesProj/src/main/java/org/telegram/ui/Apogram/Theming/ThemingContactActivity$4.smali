.class Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity$4;
.super Ljava/lang/Object;
.source "ThemingContactActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity$4;->this$0:Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity$4;->this$0:Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;

    # getter for: Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;->access$1800(Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity$4;->this$0:Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;

    # getter for: Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;->access$1900(Lorg/telegram/ui/Apogram/Theming/ThemingContactActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
