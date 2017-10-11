FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHI1My1hcGIKZGVzY3JpcHRpb246ICdBV1MgTWFuYWdlZCBSb3V0\
ZSA1MyBJbXBsZW1lbnRhdGlvbicKdGFnczoKICAtIGFtYXpvbgogIC0gcjUzCiAgLSByb3V0ZTUz\
CmJpbmRhYmxlOiB0cnVlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTog\
IkFtYXpvbiBSb3V0ZSA1MyAoQVBCKSIKICBpbWFnZVVybDogImh0dHBzOi8vczMuYW1hem9uYXdz\
LmNvbS90aHAtYXdzLWljb25zLWRldi9OZXR3b3JraW5nQ29udGVudERlbGl2ZXJ5X0FtYXpvblJv\
dXRlNTNfTEFSR0UucG5nIgogIGRvY3VtZW50YXRpb25Vcmw6ICJodHRwczovL2F3cy5hbWF6b24u\
Y29tL2RvY3VtZW50YXRpb24vcm91dGU1My8iCiAgbG9uZ0Rlc2NyaXB0aW9uOiAiQW1hem9uIFJv\
dXRlIDUzIGlzIGEgaGlnaGx5IGF2YWlsYWJsZSBhbmQgc2NhbGFibGUgRG9tYWluIE5hbWUgU3lz\
dGVtIChETlMpIHdlYiBzZXJ2aWNlLiIKICBwcm92aWRlckRpc3BsYXlOYW1lOiAiQVdTIgpwbGFu\
czoKICAtIG5hbWU6IGhvc3RlZHpvbmUKICAgIGRlc2NyaXB0aW9uOiAnTWFuYWdlZCBSb3V0ZTUz\
IGhvc3RlZCB6b25lJwogICAgZnJlZTogZmFsc2UKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5\
TmFtZTogIkhvc3RlZCBab25lIgogICAgICBsb25nRGVzY3JpcHRpb246ICJIb3N0ZWQgWm9uZSBB\
UEIiCiAgICAgIGNvc3Q6ICQwLjAwCiAgICBwYXJhbWV0ZXJzOgogICAgICAjIyMjIyMjIyMjIyMj\
IyMjIyMjIyMjIyMjIwogICAgICAjIEFXUyBBY2NvdW50IEluZm9ybWF0aW9uCiAgICAgICMjIyMj\
IyMjIyMjIyMjIyMjIyMjIyMjIyMjCiAgICAgIC0gbmFtZTogYXdzX2FjY2Vzc19rZXkKICAgICAg\
ICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBBV1MgQWNjZXNzIEtleQogICAgICAgIGRl\
c2NyaXB0aW9uOiAnQVdTIEFjY2VzcyBLZXkgdG8gYXV0aGVudGljYXRlIHRvIEFXUyB3aXRoLicK\
ICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X2dyb3VwOiBBV1MgQWNjb3VudCBJ\
bmZvcm1hdGlvbgogICAgICAtIG5hbWU6IGF3c19zZWNyZXRfa2V5CiAgICAgICAgcmVxdWlyZWQ6\
IHRydWUKICAgICAgICB0aXRsZTogQVdTIFNlY3JldCBLZXkKICAgICAgICBkZXNjcmlwdGlvbjog\
J0FXUyBTZWNyZXQgS2V5IHRvIGF1dGhlbnRpY2F0ZSB0byBBV1Mgd2l0aC4nCiAgICAgICAgdHlw\
ZTogc3RyaW5nCiAgICAgICAgZGlzcGxheV9ncm91cDogQVdTIEFjY291bnQgSW5mb3JtYXRpb24K\
ICAgICAgIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKICAgICAgIyBIb3N0ZWQgWm9uZSBTZXR0\
aW5ncwogICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwogICAgICAtIG5hbWU6IHN0YWNr\
X2lkZW50aWZpZXIKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBVbmlxdWUg\
U3RhY2sgSWRlbnRpZmllcgogICAgICAgIGRlc2NyaXB0aW9uOiAnVW5pcXVlIGlkZW50aWZpZXIg\
dG8gYmUgaW5jbHVkZWQgaW4gdGhlIENsb3VkRm9ybWF0aW9uIFN0YWNrIE5hbWUgdG8gcHJldmVu\
dCBuYW1pbmcgY29sbGlzaW9ucy4gTXVzdCBvbmx5IGNvbnRhaW4gYWxwaGFudW1lcmljIGNoYXJh\
Y3RlcnMgYW5kIGh5cGhlbnMuIChlLmcuICJzYW1wbGUtaG9zdGVkenpvbmUtc3RhY2siLCAicHJv\
ZHVjdGlvbi1yNTMtaG9zdGVkem9uZS0wOC0yMDE3IiknCiAgICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgICAgZGlzcGxheV9ncm91cDogSG9zdGVkIFpvbmUgU2V0dGluZ3MKICAgICAgLSBuYW1lOiBI\
b3N0ZWRab25lTmFtZQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IE5hbWUg\
b2YgdGhlIGhvc3RlZCB6b25lCiAgICAgICAgZGVzY3JpcHRpb246ICdEb21haW4gbmFtZSBvZiB0\
aGUgaG9zdGVkIHpvbmUgd2hpY2ggdGhlIHJlY29yZHMgYXJlIHRvIGJlIGNyZWF0ZWQgaW4uIChl\
LmcuIG15ZG9tYWluLmRvZzhjb2RlLmNvbSknCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAg\
ZGlzcGxheV9ncm91cDogSG9zdGVkIFpvbmUgU2V0dGluZ3MKICAtIG5hbWU6IHJlY29yZHNldAog\
ICAgZGVzY3JpcHRpb246ICdNYW5hZ2VkIFJvdXRlNTMgUmVjb3JkIFNldCcKICAgIGZyZWU6IGZh\
bHNlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6ICJSZWNvcmQgU2V0IgogICAgICBs\
b25nRGVzY3JpcHRpb246ICJSZWNvcmQgU2V0IEFQQiIKICAgICAgY29zdDogJDAuMDAKICAgIHBh\
cmFtZXRlcnM6CiAgICAgICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiAgICAgICMgQVdTIEFj\
Y291bnQgSW5mb3JtYXRpb24KICAgICAgIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKICAgICAg\
LSBuYW1lOiBhd3NfYWNjZXNzX2tleQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0\
bGU6IEFXUyBBY2Nlc3MgS2V5CiAgICAgICAgZGVzY3JpcHRpb246ICdBV1MgQWNjZXNzIEtleSB0\
byBhdXRoZW50aWNhdGUgdG8gQVdTIHdpdGguJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAg\
IGRpc3BsYXlfZ3JvdXA6IEFXUyBBY2NvdW50IEluZm9ybWF0aW9uCiAgICAgIC0gbmFtZTogYXdz\
X3NlY3JldF9rZXkKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBBV1MgU2Vj\
cmV0IEtleQogICAgICAgIGRlc2NyaXB0aW9uOiAnQVdTIFNlY3JldCBLZXkgdG8gYXV0aGVudGlj\
YXRlIHRvIEFXUyB3aXRoLicKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkaXNwbGF5X2dy\
b3VwOiBBV1MgQWNjb3VudCBJbmZvcm1hdGlvbgogICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMj\
IyMjIwogICAgICAjIFJlY29yZCBTZXQgU2V0dGluZ3MKICAgICAgIyMjIyMjIyMjIyMjIyMjIyMj\
IyMjIyMjIyMKICAgICAgLSBuYW1lOiBzdGFja19pZGVudGlmaWVyCiAgICAgICAgcmVxdWlyZWQ6\
IHRydWUKICAgICAgICB0aXRsZTogVW5pcXVlIFN0YWNrIElkZW50aWZpZXIKICAgICAgICBkZXNj\
cmlwdGlvbjogJ1VuaXF1ZSBpZGVudGlmaWVyIHRvIGJlIGluY2x1ZGVkIGluIHRoZSBDbG91ZEZv\
cm1hdGlvbiBTdGFjayBOYW1lIHRvIHByZXZlbnQgbmFtaW5nIGNvbGxpc2lvbnMuIE11c3Qgb25s\
eSBjb250YWluIGFscGhhbnVtZXJpYyBjaGFyYWN0ZXJzIGFuZCBoeXBoZW5zLiAoZS5nLiAic2Ft\
cGxlLXJlY29yZHNldC1zdGFjayIsICJwcm9kdWN0aW9uLXI1My1yZWNvcmRzZXQtMDgtMjAxNyIp\
JwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3BsYXlfZ3JvdXA6IFJlY29yZCBTZXQg\
U2V0dGluZ3MKICAgICAgLSBuYW1lOiBIb3N0ZWRab25lTmFtZQogICAgICAgIHJlcXVpcmVkOiB0\
cnVlCiAgICAgICAgdGl0bGU6IE5hbWUgb2YgdGhlIGhvc3RlZCB6b25lCiAgICAgICAgZGVzY3Jp\
cHRpb246ICdEb21haW4gbmFtZSBvZiB0aGUgaG9zdGVkIHpvbmUgd2hpY2ggdGhlIHJlY29yZHMg\
YXJlIHRvIGJlIGNyZWF0ZWQgaW4uJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3Bs\
YXlfZ3JvdXA6IFJlY29yZCBTZXQgU2V0dGluZ3MKICAgICAgLSBuYW1lOiBIb3N0ZWRab25lSWQK\
ICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBJZCBvZiB0aGUgaG9zdGVkIHpv\
bmUKICAgICAgICBkZXNjcmlwdGlvbjogJ0lkIG9mIHRoZSBob3N0ZWQgem9uZSB3aGljaCB0aGUg\
cmVjb3JkcyBhcmUgdG8gYmUgY3JlYXRlZCBpbicKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAg\
ICBkaXNwbGF5X2dyb3VwOiBSZWNvcmQgU2V0IFNldHRpbmdzCiAgICAgIC0gbmFtZTogVGltZVRv\
TGl2ZQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IFRpbWUgdG8gbGl2ZQog\
ICAgICAgIGRlc2NyaXB0aW9uOiAnSG93IGxvbmcgdGhlIHJlc29sdmVkIHJlY29yZCBjYW4gcmVz\
b2x2ZS4nCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDogIjM2MCIKICAgICAg\
ICBkaXNwbGF5X2dyb3VwOiBSZWNvcmQgU2V0IFNldHRpbmdzCiAgICAgIC0gbmFtZTogVHlwZW9m\
UmVjb3JkCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogVHlwZSBvZiByZWNv\
cmQKICAgICAgICBkZXNjcmlwdGlvbjogJ1RoZSB0eXBlIG9mIHJlY29yZCB0byBiZSBjcmVhdGVk\
JwogICAgICAgIGVudW06IFsiQSIsICJBQUFBIiwgIkNBQSIsICJDTkFNRSIsICJNWCIsICJOUyIs\
ICJQVFIiLCAiU09BIiwgIlNQRiIsICJTUlYiLCAiVFhUIl0KICAgICAgICB0eXBlOiBlbnVtCiAg\
ICAgICAgZGlzcGxheV9ncm91cDogUmVjb3JkIFNldCBTZXR0aW5ncwogICAgICAtIG5hbWU6IFJl\
Y29yZE5hbWUKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxlOiBSZWNvcmQgTmFt\
ZQogICAgICAgIGRlc2NyaXB0aW9uOiAnTmFtZSBvZiB0aGUgcmVjb3JkIHRvIGJlIGFkZGVkJwog\
ICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3BsYXlfZ3JvdXA6IFJlY29yZCBTZXQgU2V0\
dGluZ3MKICAgICAgLSBuYW1lOiBSZXNvdXJjZVJlY29yZAogICAgICAgIHJlcXVpcmVkOiB0cnVl\
CiAgICAgICAgdGl0bGU6IFJlc291cmNlIFJlY29yZAogICAgICAgIGRlc2NyaXB0aW9uOiAnSXAg\
b3IgRE5TIG5hbWUgdGhlIHJlY29yZCByZXNvbHZlcyB0by4nCiAgICAgICAgdHlwZTogc3RyaW5n\
CiAgICAgICAgZGlzcGxheV9ncm91cDogUmVjb3JkIFNldCBTZXR0aW5ncwogICAgICAtIG5hbWU6\
IEFsaWFzVGFyZ2V0CiAgICAgICAgcmVxdWlyZWQ6IGZhbHNlCiAgICAgICAgdGl0bGU6IEFsaWFz\
IFRhcmdldAogICAgICAgIGRlc2NyaXB0aW9uOiAnQWxpYXMgcmVzb3VyY2UgcmVjb3JkIHNldHMg\
b25seTogSW5mb3JtYXRpb24gYWJvdXQgdGhlIGRvbWFpbiB0byB3aGljaCB5b3UgYXJlIHJlZGly\
ZWN0aW5nIHRyYWZmaWMuJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRpc3BsYXlfZ3Jv\
dXA6IFJlY29yZCBTZXQgU2V0dGluZ3MK"


USER apb
