.class Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity$1;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;->showDeleteHistoryConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity$1;->this$0:Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity$1;->this$0:Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;

    # getter for: Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Apogram/UserChanges/a;
    invoke-static {v0}, Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;->access$000(Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;)Lorg/telegram/ui/Apogram/UserChanges/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Apogram/UserChanges/a;->b()V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity$1;->this$0:Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;

    # invokes: Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;->forceReload()V
    invoke-static {v0}, Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;->access$100(Lorg/telegram/ui/Apogram/UserChanges/UpdateActivity;)V

    .line 86
    return-void
.end method
