from django.contrib import admin
# from contas.models import Aluno, Professor, Coordenador
from django.contrib.auth.admin import UserAdmin
from contas.models import Aluno, Professor

from contas.forms import novo_aluno_form, altera_aluno_form
from contas.forms import novo_professor_form

# Register your models here.
class Aluno_Admin(UserAdmin):
    add_form = novo_aluno_form
    form = altera_aluno_form
    list_display = ('email', 'nome', 'ra','curso' )
    list_filter = ('curso',)
    fieldsets = ( (None, {'fields': ('ra','email', 'nome','curso')}),)
    add_fieldsets = ((None, { 'fields': ('ra', 'email', 'nome','curso' )} ),)
    search_fields = ('email',)
    ordering = ('ra',)
    filter_horizontal = ()

admin.site.register(Aluno, Aluno_Admin)
admin.site.register(Professor)
